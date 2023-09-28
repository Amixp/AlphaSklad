unit FormOptions1;

interface

uses Variants,
  Windows,
  SysUtils,
  DB,
  DBCommon,
  BDE,
  SMINTF,
  Forms,
  ExtCtrls,
  StdCtrls,
  Buttons,
  DBGrids,

  Grids,
  Mask,
  Controls,
  ComCtrls,
  Classes,
  DBCtrls,
  DBTables,
  Spin,
  JvComponent, JvFormPlacement, JvExGrids, JvStringGrid, JvExMask,
  JvToolEdit, JvComponentBase, JvAppStorage, JvAppIniStorage;

type
  TFormOptions = class(TForm)
    AddField: TBitBtn;
    AddPackBtn: TBitBtn;
    AddPeriodBtn: TBitBtn;
    AddSkladBtn: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBPathEdit: TjvDirectoryEdit;
    DelField: TBitBtn;
    DelPackBtn: TBitBtn;
    DelPeriodBtn: TBitBtn;
    DelSkladBtn: TBitBtn;
    DirAuthority: TjvDirectoryEdit;
    DirLetters: TjvDirectoryEdit;
    DirReports: TjvDirectoryEdit;
    EdFormCaption: TEdit;
    FillItem: TRadioGroup;
    FormStorage1: TjvFormStorage;
    FridgeList: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBoxItemsCount: TSpinEdit;
    ListPacks: TDBGrid;
    ListTables: TListBox;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    PeriodList: TDBGrid;
    StringTemp: TjvStringGrid;
    TableGrid: TDBGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    Button1: TButton;
    EdNumLetter: TSpinEdit;
    EdNumAuthority: TSpinEdit;
    EdNumReports: TSpinEdit;
    procedure AddFieldClick(Sender: TObject);
    procedure AddPackBtnClick(Sender: TObject);
    procedure AddPeriodBtnClick(Sender: TObject);
    procedure AddSkladBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DelFieldClick(Sender: TObject);
    procedure DelPackBtnClick(Sender: TObject);
    procedure DelPeriodBtnClick(Sender: TObject);
    procedure DelSkladBtnClick(Sender: TObject);
    procedure DirLettersButtonClick(Sender: TObject);
    procedure DirReportsButtonClick(Sender: TObject);
    procedure EditSkladBtn0Click(Sender: TObject);
    procedure EdNumAuthorityChange(Sender: TObject);
    procedure EdNumLetterChange(Sender: TObject);
    procedure EdNumReportsChange(Sender: TObject);
    procedure FillItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FridgeListCellClick(Column: TColumn);
    procedure ListBoxItemsCountChange(Sender: TObject);
    procedure ListTablesClick(Sender: TObject);
    procedure TabSheet2Hide(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  end;

var
  //NumAuthority,NumReports,NumLetter: Integer;
  PeriodsT: string = 'Period';
  ChargeT: string = 'Charge';
  FormOptions: TFormOptions;
  Pers: array[0..11] of Integer;
  Chars: array[0..11] of Currency;
implementation

uses IncomingUnit,
  AddPack1,
  ChangeValue1,
  Data1,
  AddPeriodForm1,
  Datas1,
  UnitChangePack,
  DbiProcs,
  UnitSklad1, FormPassportsUnit;

{$R *.dfm}

{
********************************* TFormOptions *********************************
}

procedure TFormOptions.AddFieldClick(Sender: TObject);
begin
  TableGrid.DataSource.DataSet.Append;
end;

procedure TFormOptions.AddPackBtnClick(Sender: TObject);
begin
  AddPack.ShowModal;
end;

procedure TFormOptions.AddPeriodBtnClick(Sender: TObject);
var
  Per, Char, Mas, Skl: string;
begin
  try
    if AddFormPeriod.ShowModal = mrOk then
    begin
      Per := AddFormPeriod.EdPeriod.Text;
      Char := AddFormPeriod.EdCharge.Text;
      Mas := AddFormPeriod.EdMass.Text;
      Skl := FridgeList.Fields[0].AsString;
      // Datas.Periods.AppendRecord([Skl,Per,Char]);
      Datas.ADOPeriods.DisableControls;
      Datas.ADOPeriods.Append;
      Datas.ADOPeriods.FieldByName('Fridge').AsString := Skl;
      Datas.ADOPeriods.FieldByName('Periods').AsString := Per;
      Datas.ADOPeriods.FieldByName('Charges').AsString := Char;
      Datas.ADOPeriods.Post;
      Datas.ADOPeriods.EnableControls;
    end;
  except
  end;
end;

procedure TFormOptions.AddSkladBtnClick(Sender: TObject);
var
  v: string;
begin
  try
    ChangeValue.EdL1.Caption := 'Холодильник:';
    ChangeValue.Caption := 'Добавление холодильника';
    if ChangeValue.ShowModal = mrOk then
    begin
      v := ChangeValue.EdValue.Text;
      // s:='тонн';//ChangeValue.EdL1.Text;
      if not Datas.ADOFridges.Locate('Fridge', v, [loCaseInsensitive]) then   { TODO : Locate заменить }
      begin
        Datas.ADOFridges.Append;
        Datas.ADOFridges.FieldByName('Fridge').AsString := v;
        Datas.ADOFridges.Post;
        Datas.ADOPeriods.Append;
        Datas.ADOPeriods.FieldByName('Fridge').AsString := v;
        Datas.ADOPeriods.FieldByName('Periods').AsInteger := 1;
        Datas.ADOPeriods.FieldByName('Charges').AsCurrency := 0;
        Datas.ADOPeriods.Post;
      end;
    end;
  except
  end;
end;

procedure TFormOptions.BitBtn1Click(Sender: TObject);
begin
  ChangePack.LbOldPack.Caption := Datas.ADOPacks.FieldByName('Pack').AsString;
  ChangePack.ShowModal;
end;

procedure TFormOptions.DelFieldClick(Sender: TObject);
begin
  TableGrid.DataSource.DataSet.Delete;
end;

procedure TFormOptions.DelPackBtnClick(Sender: TObject);
begin
  Datas.ADOPacks.Delete;
  ListPacks.fields[0].DataSet.Refresh;
end;

procedure TFormOptions.DelPeriodBtnClick(Sender: TObject);
begin

  Datas.ADOPeriods.Delete;
end;

procedure TFormOptions.DelSkladBtnClick(Sender: TObject);
begin
  Datas.ADOFridges.Delete;
end;

procedure TFormOptions.DirLettersButtonClick(Sender: TObject);
begin
  if not DirectoryExists(DirLetters.Text) then
    CreateDir(DirLetters.Text);
  if not DirectoryExists(DirAuthority.Text) then
    CreateDir(DirAuthority.Text);
end;

procedure TFormOptions.DirReportsButtonClick(Sender: TObject);
begin
  if not DirectoryExists(DirReports.Text) then
    CreateDir(DirReports.Text);

end;

procedure TFormOptions.EditSkladBtn0Click(Sender: TObject);
var
  Skl: string;
begin
  try
    ChangeValue.EdL1.Caption := 'Холодильник:';
    ChangeValue.Caption := 'Изменение холодильника';
    ChangeValue.EdValue.Text := Datas.ADOFridges.FieldValues['Fridge'];
    if ChangeValue.ShowModal = mrOk then
    begin
      Skl := ChangeValue.EdValue.Text;
      Datas.ADOFridges.Edit;
      Datas.ADOFridges.FieldByName('Fridge').AsString := Skl;
      Datas.ADOFridges.Post;
      FridgeList.fields[0].DataSet.Refresh;
    end;
  except
  end;
end;

procedure TFormOptions.EdNumAuthorityChange(Sender: TObject);
begin
  FormStorage1.StoredValues.Values['NumAuthority'].Value :=
    EdNumAuthority.Value;
end;

procedure TFormOptions.EdNumLetterChange(Sender: TObject);
begin
  FormStorage1.StoredValues.Values['NumLetter'].Value := EdNumLetter.Value;
end;

procedure TFormOptions.EdNumReportsChange(Sender: TObject);
begin
  FormStorage1.StoredValues.Values['NumReports'].Value := EdNumReports.Value;
end;

procedure TFormOptions.FillItemClick(Sender: TObject);
begin
  FormStorage1.StoredValues.Values['FillItem'].Value := FillItem.ItemIndex;
end;

procedure TFormOptions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caHide;
end;

procedure TFormOptions.FormShow(Sender: TObject);
var
  pszDir: PChar;
begin
  {  pszDir := StrAlloc(255);
    Try
      DbiGetDirectory(Data.Sklad.Database.Handle, True, pszDir);
      //OemToChar(pszDir, PChar(DBPathEdit.Text));
    Finally
      StrDispose(pszDir);
    End;
    DBPathEdit.Text := PChar(pszDir);
                                      }
    //pagecontrol1.ActivePageIndex:=0;
  EdNumReports.Value := FormStorage1.StoredValues.Values['NumReports'].Value;
  EdNumAuthority.Value :=
    FormStorage1.StoredValues.Values['NumAuthority'].Value;
  EdNumLetter.Value := FormStorage1.StoredValues.Values['NumLetter'].Value;
  ListBoxItemsCount.Value :=
    FormStorage1.StoredValues.Values['ListBoxCount'].Value;
  FillItem.ItemIndex := FormStorage1.StoredValues.Values['FillItem'].Value;
end;

procedure TFormOptions.FridgeListCellClick(Column: TColumn);
begin
  Datas.ADOPeriods.Filter := 'Fridge=' + QuotedStr(Column.Field.AsString);
  Datas.ADOPeriods.Filtered := True;
end;

procedure TFormOptions.ListBoxItemsCountChange(Sender: TObject);
begin
  FormStorage1.StoredValues.Values['ListBoxCount'].Value :=
    ListBoxItemsCount.Value;
end;

procedure TFormOptions.ListTablesClick(Sender: TObject);
var
  i: Integer;

  //s: string;

begin
  {Наименование продукции
  Изготовитель
  Транспорт
  Холодильник
  Скл. св.
  Партия
  Род упаковки
  Вес места
  }
  i := ListTables.ItemIndex;
  //s:=ListTables.Items.Strings[i];
  case i of
    0: TableGrid.DataSource := Datas.DSNameProds;
    1: TableGrid.DataSource := Datas.DSProducers;
    2: TableGrid.DataSource := Datas.DSTransports;
    3: TableGrid.DataSource := Datas.DSFridges;
    4: TableGrid.DataSource := Datas.DSSklads;
    5: TableGrid.DataSource := Datas.DSLots;
    6: TableGrid.DataSource := Datas.DSPacks;
    7: TableGrid.DataSource := Datas.DSWeight_places;
  end;

end;

procedure TFormOptions.TabSheet2Hide(Sender: TObject);
begin
  Datas.ADOPeriods.Filtered := False;
end;

procedure TFormOptions.TabSheet2Show(Sender: TObject);
begin
  Datas.ADOPeriods.Filter := 'Fridge=' +
    QuotedStr(FridgeList.Columns.Grid.SelectedField.AsString);
  Datas.ADOPeriods.Filtered := True;
end;

{
procedure TFormOptions.SortPeriods;
var
i,p: integer;
c: Currency;
//s: string;
f,b: Boolean;
begin
Datas.Periods.First;
while not Datas.Periods.Eof do
begin

for i:=0 to 11 do       //загрузка массивов
begin
 Pers[i]:=Datas.Periods.FieldByName('Period'+IntToStr(i)).AsInteger;
 Chars[i]:=Datas.Periods.FieldByName('Charge'+IntToStr(i)).AsCurrency;
end;
p:=0;
c:=0;
repeat   //сортировка по возрастанию
 b:=True;
 for i:=0 to 11 do
 begin
 p:=Pers[i+1];
 if Pers[i]>P then
  begin
   Pers[i+1]:=Pers[i];
   Pers[i]:=p;
   c:=Chars[i+1];
   Chars[i+1]:=Chars[i];
   Chars[i]:=c;
   b:=False;
  end;
 end;
until f;
p:=0;
for i:=0 to 11 do       //запись массивов
begin
 if Pers[i]>0 then
 begin
  Datas.Periods.FieldByName('Period'+IntToStr(p)).AsInteger:=Pers[i];
  Datas.Periods.FieldByName('Charge'+IntToStr(p)).AsCurrency:=Chars[i];
  Inc(p);
 end;
end;

 Datas.Periods.Next;
end;

end; }

procedure TFormOptions.Button1Click(Sender: TObject);
begin
  FormPassports := TFormPassports.Create(self);
  FormPassports.ShowModal;
  FormPassports.Free;
end;

end.

