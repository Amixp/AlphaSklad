unit UnitDBConnection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, AdoConEd, JvToolEdit, Data.DB,
  Data.Win.ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client;

type
  TFormDBConnection = class(TForm)
    edDBFile: TJvFilenameEdit;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    OpenDialog1: TOpenDialog;
    ADOConnection1: TADOConnection;

    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDBFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    sDBFile, sConnectionString: string;
    procedure FormInit;
    { Public declarations }
  end;

var
  FormDBConnection: TFormDBConnection;

implementation

{$R *.dfm}

procedure TFormDBConnection.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDBConnection.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDBConnection.btn3Click(Sender: TObject);
begin
  if EditConnectionString(ADOConnection1) then
    try
      ADOConnection1.Open;
      sConnectionString := ADOConnection1.ConnectionString;
    finally

    end;
end;

procedure TFormDBConnection.edDBFileClick(Sender: TObject);
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);

  if OpenDialog1.Execute then
  begin
    // Database1.Params.Values['PATH'] := ExtractFilePath(OpenDialog1.FileName);
    ADOConnection1.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;' +
      'Data Source=' + OpenDialog1.FileName + ';Persist Security Info=False';
  end
  else
    Exception.Create('База данных не найдена!');
end;

procedure TFormDBConnection.FormCreate(Sender: TObject);
begin
  FormInit;
end;

procedure TFormDBConnection.FormInit;
begin
  edt1.Text := sConnectionString;
  edDBFile.Text := sDBFile;
end;

end.
