unit UnitData;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.VCLUI.Wait, JvComponentBase,
  JvFormPlacement;

type
  TDataModule2 = class(TDataModule)
    FDConnection: TFDConnection;
    FDQ_Sklad: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    DataSource1: TDataSource;
    JvFormStorage1: TJvFormStorage;
    procedure FDConnectionAfterConnect(Sender: TObject);
    procedure FDConnectionAfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses UnitMainView;

{$R *.dfm}

procedure TDataModule2.FDConnectionAfterConnect(Sender: TObject);
begin
  FDQ_Sklad.Connection := FDConnection;
  FDQ_Sklad.Active := True;
  FormMainViewer.Action2.Caption := CapConnected;
end;

procedure TDataModule2.FDConnectionAfterDisconnect(Sender: TObject);
begin
  FormMainViewer.Action2.Caption := CapDisConnected;
end;

end.
