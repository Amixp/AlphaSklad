unit UnitTestDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Data.Win.ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Error, FireDAC.Comp.UI,
  FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FireDAC.VCLUI.Wait, Data.Bind.Controls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator;

type
  TForm1 = class(TForm)
    btn1: TButton;
    fconAskladConnection: TFDConnection;
    fdqrySkladTable: TFDQuery;
    bndsrcdb1: TBindSourceDB;
    SkladtableBindSourceDB: TStringGrid;
    lnkgrdtdtsrcBindSourceDB: TLinkGridToDataSource;
    bndngslst1: TBindingsList;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    bndnvgtr1: TBindNavigator;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DataUnitTest1;

procedure TForm1.btn1Click(Sender: TObject);
begin
with fconAskladConnection.Params do
begin
  Database:=  'asklad_test';
  DriverID:= 'MSSQL';
  Password:='Weronalika9';
  Server:= 'server';
  Workstation:='SERVER';
  ApplicationName:='Architect';
end;
end;

end.
