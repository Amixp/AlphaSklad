Unit ChangeValue1;

Interface

Uses Forms,
  StdCtrls,
  Controls,
  ExtCtrls,

  Classes, Buttons;

Type
  TChangeValue = class(TForm)
    BtnCancel: TBitBtn;
    BtnOk: TBitBtn;
    EdL1: TLabel;
    EdValue: TEdit;
    procedure EdValueChange(Sender: TObject);
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
  end;

Var
  ChangeValue: TChangeValue;

Implementation

{$R *.dfm}

{
  ********************************* TChangeValue *********************************
}
procedure TChangeValue.EdValueChange(Sender: TObject);
begin
  BtnOk.Enabled := (EdValue.Text <> '');
end;

procedure TChangeValue.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  Action := caHide;
end;

End.
