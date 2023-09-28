Unit AddPeriodForm1;

Interface

Uses SysUtils,
  Forms,
  StdCtrls,
  Controls,
  ExtCtrls,

  Classes, Buttons;

Type
  TAddFormPeriod = class(TForm)
    BtnCancel: TBitBtn;
    BtnOk: TBitBtn;
    EdCharge: TEdit;
    EdL1: TLabel;
    EdMass: TEdit;
    EdPeriod: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure EdChargeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
  end;

Var
  AddFormPeriod: TAddFormPeriod;

Implementation

{$R *.dfm}

{
******************************** TAddFormPeriod ********************************
}
procedure TAddFormPeriod.EdChargeChange(Sender: TObject);
var
  i: Integer;
  e: Currency;
begin
  BtnOk.Enabled := False;
  Try
    i := StrToInt(EdPeriod.Text);
    e := StrToCurr(EDCharge.Text);
    BtnOk.Enabled := True
  Except
  End;
end;

procedure TAddFormPeriod.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  Action := caHide;
end;

End.


