Unit UnitListDocFiles;

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
  StdCtrls;

Type
  TListFilesForm = class(TForm)
    ListDocFiles: TListBox;
  end;

Var
  ListFilesForm: TListFilesForm;

Implementation

{$R *.dfm}

End.
