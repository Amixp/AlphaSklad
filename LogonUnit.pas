Unit LogonUnit;

Interface

Uses Forms,
  Graphics,
  Controls,
  ExtCtrls,
  Classes,
  StdCtrls,
  JvExControls, JvComponent, JvLabel;

Type
  TLogonForm = class(TForm)
    Image1: TImage;
    CompanyLabel: TLabel;
    Panel1: TPanel;
    ProductNameLabel: TJvLabel;
    RxLabel3: TJvLabel;
    VersionLabel: TJvLabel;
    LbCompName: TLabel;
  end;

Var
  LogonForm: TLogonForm;

Implementation

{$R *.dfm}

End.
