unit DataClearBase2;

interface

uses
  SysUtils, Classes, DB, Dialogs, FileCtrl, JvComponentBase, JvFormPlacement, 
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, 
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, 
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TData = class(TDataModule)
    Session1: TFDManager;
    Db1: TFDConnection;
    Sklad: TFDTable;
    OpenDialog1: TOpenDialog;
    FormStorage1: TjvFormStorage;
    LogIncoming: TFDTable;
    LogSale: TFDTable;
    Periods: TFDTable;
    Packs: TFDTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure EmptyTable(Table: Tfdtable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Data: TData;

implementation



{$R *.dfm}

procedure TData.DataModuleCreate(Sender: TObject);
var
Dir: string;
begin
//OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
if not DirectoryExists(Db1.Params.Values['PATH']) then
if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],1000) then
// if OpenDialog1.Execute then
  Db1.Params.Values['PATH']:=Dir;//ExtractFilePath(openDialog1.FileName);
 try
db1.Open;
db1.Close;
{Sklad.Open;
LogIncoming.Open;
LogSale.Open;
Periods.Open;
Packs.Open; }
 except
  ShowMessage('Ошибка открытия базы!');
 end;
end;

procedure TData.DataModuleDestroy(Sender: TObject);
begin
Db1.Close;
end;

procedure tData.EmptyTable(Table: Tfdtable);
begin
 table.SQL.Text:='DELETE FROM '+ table.TableName;
 table.ExecSQL;
end;
end.