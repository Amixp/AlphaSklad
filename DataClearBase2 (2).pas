unit DataClearBase2;

interface

uses
  SysUtils, Classes, DB, DBTables,  Dialogs, FileCtrl,
  JvComponentBase, JvFormPlacement;

type
  TData = class(TDataModule)
    Session1: TSession;
    Db1: TDatabase;
    Sklad: TTable;
    OpenDialog1: TOpenDialog;
    FormStorage1: TjvFormStorage;
    LogIncoming: TTable;
    LogSale: TTable;
    Periods: TTable;
    Packs: TTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
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

end.