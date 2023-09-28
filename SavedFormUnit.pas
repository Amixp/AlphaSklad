Unit SavedFormUnit;

Interface

Uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ExtCtrls,
  StdCtrls,
  Buttons;

Type
  TSavedForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LbFileName: TLabel;
    Panel1: TPanel;
  end;

Var
  SavedForm: TSavedForm;

Implementation

{$R *.dfm}

End.
