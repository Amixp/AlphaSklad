// JCL_DEBUG_EXPERT_INSERTJDBG OFF
// JCL_DEBUG_EXPERT_GENERATEJDBG OFF
Program AlphaSklad;

uses
  Forms,
  ShellApi,
  JclFileUtils,
  System.Classes,
  JvComputerInfoEx,
  JvSysRequirements,
  JvProgramVersionCheck,
  SysUtils,
  JvComponent,
  JvComponentBase,
  UnitSklad1 in 'UnitSklad1.pas' {MainForm} ,
  IncomingUnit in 'IncomingUnit.pas' {IncomingProd} ,
  FormOptions1 in 'FormOptions1.pas' {FormOptions} ,
  AddPack1 in 'AddPack1.pas' {AddPack} ,
  SaleProd1 in 'SaleProd1.pas' {SaleProd} ,
  Progressform1 in 'Progressform1.pas' {ProgressForm} ,
  EditForm1 in 'EditForm1.pas' {EditProd} ,
  ChangeValue1 in 'ChangeValue1.pas' {ChangeValue} ,
  AddPeriodForm1 in 'AddPeriodForm1.pas' {AddFormPeriod} ,
  SysInfoForm1 in 'SysInfoForm1.pas' {SysInfoForm} ,
  DataUnit1 in 'DataUnit1.pas' {DataUnit: TDataModule} ,
  Datas1 in 'Datas1.pas' {Datas: TDataModule} ,
  LogonUnit in 'LogonUnit.pas' {LogonForm} ,
  UnitChangePack in 'UnitChangePack.pas' {ChangePack} ,
  UnitViewForm in 'UnitViewForm.pas' {ViewForm} ,
  SavedFormUnit in 'SavedFormUnit.pas' {SavedForm} ,
  FormPassportsUnit in 'FormPassportsUnit.pas' {FormPassports} ,
  UnitListDocFiles in 'UnitListDocFiles.pas' {ListFilesForm} ,
  UnitService in 'UnitService.pas',
  UnitClientForm in 'UnitClientForm.pas' {ClientForm} ,
  UnitDBConnection in 'UnitDBConnection.pas' {FormDBConnection} ,
  ExceptionDialogUnit in 'ExceptionDialogUnit.pas' {ExceptionDialog} ,
  UnitEvents in 'UnitEvents.pas' {FormEvents};

{$R *.res}

Var
  _iniFileName: String = 'AlphaSklad.ini';
  sdir, vs: String;
  LogVar: string;
  sComputerName: string;
  JvComputerInfoEx1: TJvComputerInfoEx;
  DecimalSeparatorSys: char;

Procedure FileCopy(Const SourceFileName, TargetFileName: String);
Var
  S, T: TFileStream;
Begin
  S := TFileStream.Create(SourceFileName, fmOpenRead);
  try
    T := TFileStream.Create(TargetFileName, fmOpenWrite or fmCreate);
    try
      T.CopyFrom(S, S.Size);
      FileSetDate(T.Handle, FileGetDate(S.Handle));
    finally
      T.Free;
    end;
  finally
    S.Free;
  end;
end;

function BackupConfig(sFilename: string): boolean;
var
  sBackupName: string;
begin
  sBackupName := ChangeFileExt(sFilename, '.backup');
  try
    if FileExists(sFilename) then
    begin
      FileCopy(sFilename, sBackupName);
    end;
    Result := True;
  except
    Result := False;
    Log('ERROR: Backup config from ' + sFilename + ' to ' + sBackupName, 5);
  end;
end;

Begin
  LogVar := '';
  Log('Start App', 2);

  LogonForm := TLogonForm.Create(Application);
  // LogonForm.LMDVersionInfo1.Loaded;
  with TJclFileVersionInfo.Create(Application.ExeName) do
    try
      JvComputerInfoEx1 := TJvComputerInfoEx.Create(nil);
      sComputerName := JvComputerInfoEx1.Identification.LocalComputerName;
      JvComputerInfoEx1.Free;
      _iniFileName := 'AlphaSklad_' + sComputerName + '_.ini';
      DecimalSeparatorSys := FormatSettings.DecimalSeparator;
      FormatSettings.DecimalSeparator := '.';
      LogonForm.ProductNameLabel.Caption := ProductName;
      vs := Format('Ver: %s', [FileVersion]);
      LogonForm.VersionLabel.Caption := vs;
      LogonForm.CompanyLabel.Caption := LegalCopyright;
      LogonForm.LbCompName.Caption := sComputerName;
      // Copyright © 2001-2005, AmigaÆ                          ¿‚ÚÓ: ’Û‰ÓÎÂÈ ¿ÚÂÏ
    finally
      Free;
    end;
  Log('Logon form show ver: ' + vs, 2);
  // vs := 'v' + LogonForm.LMDVersionInfo1.FileVersion;
  // LogonForm.VerLabel.Caption := vs;
  LogonForm.Show;
  LogonForm.Update;
  Chdir(ExtractFilePath(Application.ExeName));
  sdir := GetCurrentDir;
  // _iniFileName := sdir + '\' + _iniFileName;
  Application.Initialize;
  Application.Title := '¿Î¸Ù‡-—ÍÎ‡‰';

  // Application.CreateForm(TFormDBConnection, FormDBConnection);
  // FormOptions.FormStorage1. := _iniFileName;

  Application.CreateForm(TMainForm, MainForm);
  MainForm.vComputerName := sComputerName;
  Application.CreateForm(TFormEvents, FormEvents);
  BackupConfig(sdir + '\' + _iniFileName);
  MainForm.JvAppIniFileStorage1.FileName := sdir + '\' + _iniFileName;
  MainForm.FormStorage1.RestoreFormPlacement;
  Log('Show App main form', 2);
  Application.CreateForm(TDataUnit, DataUnit);
  Log('Show DataUnit form', 2);
  Application.CreateForm(TDatas, Datas);
  Log('Show Datas form', 2);
  Application.CreateForm(TFormOptions, FormOptions);
  FormOptions.FormStorage1.RestoreFormPlacement;
  Log('Show FormOptions form', 2);
  Application.CreateForm(TListFilesForm, ListFilesForm);
  Log('Show ListFilesForm form', 2);
  // Application.CreateForm(TClientForm, ClientForm);
  MainForm.Caption := MainForm.Caption + ' - ' + vs;
  MainForm.Caption := MainForm.Caption + ' ' + FormOptions.EdFormCaption.Text;
  { Application.CreateForm(TAddPack, AddPack);
    Application.CreateForm(TChangeValue, ChangeValue);
    Application.CreateForm(TAddFormPeriod, AddFormPeriod);
    Application.CreateForm(TSysInfoForm, SysInfoForm);
    Application.CreateForm(TChangePack, ChangePack); }
  Sleep(2000);
  LogonForm.Hide;
  LogonForm.Free;
  Application.Run;

  // MainForm.Show;
  FormatSettings.DecimalSeparator := DecimalSeparatorSys;

End.
