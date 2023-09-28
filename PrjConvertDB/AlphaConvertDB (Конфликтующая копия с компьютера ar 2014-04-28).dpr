program AlphaConvertDB;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {MainForm},
  UnitSQLcmds in 'UnitSQLcmds.pas',
  UnitFunctions in 'UnitFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
