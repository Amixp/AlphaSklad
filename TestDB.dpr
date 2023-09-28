program TestDB;

uses
  Forms,
  JclFileUtils,
  System.Classes,
  UnitTestDB in 'UnitTestDB.pas' {Form1},
  DataUnitTest1 in 'DataUnitTest1.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
