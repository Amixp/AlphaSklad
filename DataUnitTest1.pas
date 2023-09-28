unit DataUnitTest1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.VCLUI.Login, FireDAC.VCLUI.Error,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet,
  FireDAC.Comp.DataSet, FireDAC.Phys.ODBCBase;

type
  TDataModule1 = class(TDataModule)

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}


end.
