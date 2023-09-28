Program AlphaSklad;



uses
  Forms,
  JclFileUtils,
  SysUtils,
  UnitSklad1 in 'UnitSklad1.pas' {MainForm},
  IncomingUnit in 'IncomingUnit.pas' {IncomingProd},
  FormOptions1 in 'FormOptions1.pas' {FormOptions},
  AddPack1 in 'AddPack1.pas' {AddPack},
  SaleProd1 in 'SaleProd1.pas' {SaleProd},
  Progressform1 in 'Progressform1.pas' {ProgressForm},
  EditForm1 in 'EditForm1.pas' {EditProd},
  ChangeValue1 in 'ChangeValue1.pas' {ChangeValue},
  AddPeriodForm1 in 'AddPeriodForm1.pas' {AddFormPeriod},
  SysInfoForm1 in 'SysInfoForm1.pas' {SysInfoForm},
  Data1 in 'Data1.pas' {DataUnit: TDataModule},
  Datas1 in 'Datas1.pas' {Datas: TDataModule},
  LogonUnit in 'LogonUnit.pas' {LogonForm},
  UnitChangePack in 'UnitChangePack.pas' {ChangePack},
  UnitViewForm in 'UnitViewForm.pas' {ViewForm},
  SavedFormUnit in 'SavedFormUnit.pas' {SavedForm},
  FormPassportsUnit in 'FormPassportsUnit.pas' {FormPassports},
  UnitListDocFiles in 'UnitListDocFiles.pas' {ListFilesForm},
  UnitDBImport in 'UnitDBImport.pas' {FormDBImport},
  UnitService in 'UnitService.pas',
  UnitClientForm in 'UnitClientForm.pas' {ClientForm};

{$R *.res}
Var
  _iniFileName: String = 'AlphaSklad.ini';
  sdir, vs: String;
Begin
  LogonForm := TLogonForm.Create(Application);
 // LogonForm.LMDVersionInfo1.Loaded;
    with TJclFileVersionInfo.Create(Application.ExeName) do
  try
    LogonForm.ProductNameLabel.Caption := ProductName;
    vs :=  Format('Ver: %s', [FileVersion]);
    LogonForm.VersionLabel.Caption := vs;
    LogonForm.CompanyLabel.Caption := LegalCopyright; //Copyright © 2001-2005, Amiga®                          Автор: Худолей Артем
  finally
    Free;
  end;
 // vs := 'v' + LogonForm.LMDVersionInfo1.FileVersion;
 // LogonForm.VerLabel.Caption := vs;
  LogonForm.Show;
  LogonForm.Update;
  Chdir(ExtractFilePath(Application.ExeName));
  sdir := GetCurrentDir;
  //_iniFileName := sdir + '\' + _iniFileName;
  Application.Initialize;
  Application.Title := 'Альфа-Склад';
  Application.CreateForm(TDataUnit, DataUnit);
  Application.CreateForm(TDatas, Datas);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TListFilesForm, ListFilesForm);
  //Application.CreateForm(TClientForm, ClientForm);
  MainForm.Caption := MainForm.Caption + ' - ' + vs;
  Application.CreateForm(TFormOptions, FormOptions);
  //FormOptions.FormStorage1. := _iniFileName;
  FormOptions.FormStorage1.RestoreFormPlacement;
  MainForm.Caption := MainForm.Caption + ' ' + FormOptions.EdFormCaption.Text;
  Application.CreateForm(TAddPack, AddPack);
  Application.CreateForm(TChangeValue, ChangeValue);
  Application.CreateForm(TAddFormPeriod, AddFormPeriod);
  Application.CreateForm(TSysInfoForm, SysInfoForm);
  Application.CreateForm(TChangePack, ChangePack);
  Sleep(2000);
  LogonForm.Hide;
  LogonForm.Free;
  Application.Run;
  // MainForm.Show;
End.

