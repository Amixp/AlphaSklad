unit UnitMainView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, JvAppStorage,
  JvAppIniStorage,
  JvComponentBase, JvFormPlacement, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, Vcl.ImgList, System.Actions,
  System.IniFiles,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ToolWin, Vcl.ComCtrls, JvActionsEngine, JvDBActions, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI, System.ImageList,
  JvNavigationPane, JvXPCore, Vcl.ExtCtrls;

type
  TFormMainViewer = class(TForm)
    JvDBUltimGrid1: TJvDBUltimGrid;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    ImageList1: TImageList;
    ActionToolBar2: TActionToolBar;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvXPStyleManager1: TJvXPStyleManager;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    Timer1: TTimer;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure JvDBUltimGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Connection;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure MyGridDraw(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainViewer: TFormMainViewer;
  Autologin: Boolean;
  ConnStr: string;

const
  CapDisConnected: string = 'Подключить';
  CapConnected: string = 'Подключено';

implementation

{$R *.dfm}

uses UnitData, LoginPromt, UnitOptions;

procedure TFormMainViewer.Action1Execute(Sender: TObject);
begin
  FormOptions.Show;
end;

procedure TFormMainViewer.Action2Execute(Sender: TObject);
var
  xIniFile: TIniFile;
  xAppPath: string;
begin

  xAppPath := ExtractFilePath(Application.ExeName);
  // считываем параметры подключения
  if FileExists(xAppPath + '\config.ini') then
  begin
    xIniFile := TIniFile.Create(xAppPath + '\config.ini');
    try
      xIniFile.ReadSectionValues('connection', DataModule2.FDConnection.Params);

      ConnStr := xIniFile.ReadString('connection', 'ConnectionString', '');
    finally
      xIniFile.Free;
    end;
  end;
  Connection;

end;

procedure TFormMainViewer.Connection;

const
  MAX_LOGIN_COUNT: Integer = 3;
var
  xLoginPromptDlg: TLoginPromptForm;
  xLoginCount: Integer;

const
  DefConnStr
    : string =
    'Database=asklad;User_Name=sa;Password=Weronalika9;Server=192.168.0.12;' +
    'ApplicationName=AlphaSkladViewer;LoginTimeout=5;DriverID=MSSQL';

begin
  xLoginCount := 0;
  if not DataModule2.FDConnection.Connected then
  begin
    if ConnStr = '' then
      ConnStr := DefConnStr;
    DataModule2.FDConnection.ConnectionString := ConnStr;
    if not Autologin then
    begin
      xLoginPromptDlg := TLoginPromptForm.Create(Self);
      while (xLoginCount < MAX_LOGIN_COUNT) and
        (not DataModule2.FDConnection.Connected) do
      begin
        try

          if xLoginPromptDlg.ShowModal = mrOK then
            DataModule2.FDConnection.Open(ConnStr, xLoginPromptDlg.UserName,
              xLoginPromptDlg.Password)
          else
            xLoginCount := MAX_LOGIN_COUNT;

        except
          on E: Exception do
          begin
            Inc(xLoginCount);
            Application.ShowException(E);
          end
        end;
      end;
      xLoginPromptDlg.Free;
    end
    else
      DataModule2.FDConnection.Open(ConnStr);
  end

  // if not DataModule2.FDConnection.Connected then
  // Halt;

  else
    DataModule2.FDConnection.Close;

  Action2.Checked := DataModule2.FDConnection.Connected;

end;

procedure TFormMainViewer.FormCreate(Sender: TObject);
begin
  JvFormStorage1.RestoreFormPlacement;
  Autologin := JvFormStorage1.StoredValue['Autologin'];
end;

procedure TFormMainViewer.FormDestroy(Sender: TObject);
var
  xIniFile: TIniFile;
  xAppPath: string;
begin

  xAppPath := ExtractFilePath(Application.ExeName);
  // записываем параметры подключения

  xIniFile := TIniFile.Create(xAppPath + '\config.ini');
  try
    xIniFile.WriteString('connection', 'ConnectionString', ConnStr);
    xIniFile.UpdateFile;
  finally
    xIniFile.Free;
  end;

  JvFormStorage1.StoredValue['Autologin'] := Autologin;
  JvFormStorage1.SaveFormPlacement;
end;

procedure TFormMainViewer.JvDBUltimGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  MyGridDraw(Sender, Rect, DataCol, Column, State);
end;

procedure TFormMainViewer.MyGridDraw(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  cl: Integer;
  sc: string;
begin
  Try
    sc := (Sender As TJvDBUltimGrid).datasource.DataSet.FieldByName
      ('Color').AsString;
    If (sc = '') or (sc = '0') Then
    begin
      sc := IntToStr(clWindow);
    end;
    cl := StrToInt(sc);
    if (gdSelected in State) then
    begin
      TJvDBUltimGrid(Sender).Canvas.Font.Color := cl;
      TJvDBUltimGrid(Sender).Canvas.Brush.Color := clHighlight;

      TJvDBUltimGrid(Sender).Canvas.Font.Style := [fsBold];
      { If ColorToRGB((TDBGrid(Sender).Font.Color)) = ColorToRGB(Cl) Then
        TDBGrid(Sender).Canvas.Font.Color := TDBGrid(Sender).font.color; }
    End
    Else
      { If ColorToRGB(AFont.Color) = ColorToRGB(Cl) Then
        TJvDBUltimGrid(Sender).Canvas.Font.Color := (TJvDBUltimGrid(Sender).HighlightTextColor; }
      // If FormOptions.FormStorage1.StoredValues.Values['FillItem'].Value = 1 Then
      // настройка в опциях - что окрашивать цветом из ячейки
      TJvDBUltimGrid(Sender).Canvas.Brush.Color := cl;
    // Else
    // TDBGrid(Sender).Canvas.Font.Color := cl;
    // end;
    TJvDBUltimGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  Except
  End;
  {
    Try
    ic := (Sender As TdxDBGrid).ColumnByFieldName('Color').Index;
    sc := ANode.Strings[ic];
    If sc = '' Then
    Exit;
    cl := StrToInt(sc);
    If AFocused Or ASelected Then
    Begin
    AFont.Style := [fsBold];
    If ColorToRGB((Sender As TdxDBGrid).HighlightTextColor) = ColorToRGB(Cl) Then
    AFont.Color := (Sender As TdxDBGrid).HighlightColor;
    End
    Else
    If ColorToRGB(AFont.Color) = ColorToRGB(Cl) Then
    AFont.Color := (Sender As TdxDBGrid).HighlightTextColor;
    If formoptions.FormStorage1.StoredValues.Values['FillItem'].Value = 1 Then
    AColor := Cl
    Else
    AFont.Color := Cl;
    Except
    End;
  }
end;

procedure TFormMainViewer.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  if Autologin then
    Action2Execute(Self);

end;

end.
