program ClearDataBase;

uses
  Forms,
  DataClearBase1 in 'DataClearBase1.pas' {FormClearBase},
  DataClearBase2 in 'DataClearBase2.pas' {Data: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormClearBase, FormClearBase);
  Application.CreateForm(TData, Data);
  Application.Run;
end.
