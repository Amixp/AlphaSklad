program Alphaviewer;

uses
  Vcl.Forms,
  UnitMainView in 'UnitMainView.pas' {FormMainViewer} ,
  UnitData in 'UnitData.pas' {DataModule2: TDataModule} ,
  LoginPromt in 'LoginPromt.pas' {LoginPromptForm} ,
  UnitOptions in 'UnitOptions.pas' {FormOptions};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'AlphaSklad Viewer';
  Application.CreateForm(TFormMainViewer, FormMainViewer);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TFormOptions, FormOptions);
  // Application.CreateForm(TLoginPromptForm, LoginPromptForm);
  Application.Run;

end.
