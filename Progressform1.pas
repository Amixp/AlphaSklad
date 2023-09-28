Unit Progressform1;

Interface

Uses Forms,

  Controls,
  StdCtrls,
  Classes,
  ExtCtrls, ComCtrls, JvExControls, JvComponent, JvSpecialProgress;

Type
  TProgressForm = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    PrBar: TJvSpecialProgress;
  end;

Var
  ProgressForm: TProgressForm;

Implementation

{$R *.dfm}

End.
