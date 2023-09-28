unit DataClearBase1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatSpeedButtonUnit, TFlatGroupBoxUnit, RXCtrls, ExtCtrls,
  RzDlgBtn, JvExControls, JvLabel;

type
  TFormClearBase = class(TForm)
    Panel1: TPanel;
    RxLabel1: TjvLabel;
    procedure FlatSpeedButton1Click(Sender: TObject);
    procedure FlatSpeedButton2Click(Sender: TObject);
    procedure FlatSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClearBase: TFormClearBase;

implementation

uses DataClearBase2;

{$R *.dfm}

procedure TFormClearBase.FlatSpeedButton1Click(Sender: TObject);
begin
//Data.DSSklad.Enabled:=False;
Data.Sklad.EmptyTable;
//Data.DSSklad.Enabled:=True;
end;

procedure TFormClearBase.FlatSpeedButton2Click(Sender: TObject);
begin
//Data.DSLogIncoming.Enabled:=False;
Data.LogIncoming.EmptyTable;
//Data.DSLogIncoming.Enabled:=true;
end;

procedure TFormClearBase.FlatSpeedButton3Click(Sender: TObject);
begin
//Data.DSLogSale.Enabled:=False;
Data.LogSale.EmptyTable;
//Data.DSLogSale.Enabled:=True;

end;

end.