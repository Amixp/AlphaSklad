Unit Data1;

Interface

Uses Controls,
  Forms,
  SysUtils,
  Dialogs,

  Classes,
  DB,
  ADODB,
  FileCtrl, JvComponent, JvFormPlacement, JvComponentBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.VCLUI.Wait;

Type
  TDataUnit = class(TDataModule)
    DSLogIncoming: TDataSource;
    DSLogSale: TDataSource;
    DSPassports: TDataSource;
    DSSklad: TDataSource;
    FormStorage1: TjvFormStorage;
    OpenDialog1: TOpenDialog;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    ADOsklad: TADOTable;
    ADOIncomingLog: TADOTable;
    ADOSaleLog: TADOTable;
    ADOPassports: TADOTable;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    cmd1: TADOCommand;
    Database1: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DSSkladDataChange(Sender: TObject; Field: TField);
    procedure LogIncomingAfterClose(DataSet: TDataSet);
    procedure LogIncomingAfterOpen(DataSet: TDataSet);
    procedure LogSaleAfterClose(DataSet: TDataSet);
    procedure LogSaleAfterOpen(DataSet: TDataSet);
    procedure PassportsAfterClose(DataSet: TDataSet);
    procedure SkladAfterClose(DataSet: TDataSet);
    procedure SkladAfterOpen(DataSet: TDataSet);
    procedure SummFieldsLogIncoming;
    procedure SummFieldsLogSale;
    procedure SummFieldsSklad;
    function QueryRecordset(Cmd: TADOQuery;
      StrFieldNames, StrTableName: String; StrFilter: String = ''): _Recordset;
    procedure ReadYears(var Y1, Y2: String; Cmd: TADOQuery;
      StrFieldNames, StrTableName, StrFilter: String);
    function FindKey(KeyName, KeyValue, TableName: string): integer;
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure ShowDBConnectionForm;
    function OpenDB: boolean;

  end;

Var
  FlagChangeDB: Boolean;
  DataUnit: TDataUnit;
  SkladNum_Records, SkladNum_N_Items, SkladNum_Net_Weight,
    SkladNum_Gross_Weight: String;
  LogIncomingNum_Records, LogIncomingNum_N_Items, LogIncomingNum_Net_Weight,
    LogIncomingNum_Gross_Weight: String;
  LogSaleNum_Records, LogSaleNum_N_Items, LogSaleNum_Net_Weight,
    LogSaleNum_Gross_Weight, LogSaleNum_Storage_fee: String;

Implementation

Uses UnitSklad1,
  Datas1, FormOptions1, UnitDBConnection;

{$R *.dfm}

{
  ************************************ TData *************************************
}
procedure TDataUnit.ShowDBConnectionForm();
begin
  FormDBConnection := TFormDBConnection.Create(self);
  FormDBConnection.sConnectionString := ADOConnection1.ConnectionString;
  FormDBConnection.sDBFile := Database1.Params.Values['PATH'];
  FormDBConnection.FormInit;
  FormDBConnection.ShowModal;
  ADOConnection1.ConnectionString := FormDBConnection.sConnectionString;
  FormDBConnection.Free;
  // присвить результаты формы в переменные для компонента database1
end;

procedure TDataUnit.DataModuleCreate(Sender: TObject);
var
  dbfile, Dir: string;
  FlgDBerr: boolean; //флаг ошибки подключения к базе данных
begin
FlgDBerr:=false;
  Database1.Close;
  ADOConnection1.Close;
  FormStorage1.RestoreFormPlacement;
  FlagChangeDB := false;
  //ADOConnection1.LoginPrompt:=true;
  dir:=ExtractFilePath(Application.ExeName);
  if FileExists(Dir + 'accessdb.mdb') then
  begin
  ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;\Data Source="'+Dir + 'accessdb.mdb";Persist Security Info=False';
  /// Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Database Password="";Data Source=C:\Users\artem\Documents\RAD Studio\Projects\AlphaSklad22\accessdb.mdb;Mode=Share Deny None;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;
   //Provider=Microsoft.Jet.OLEDB.4.0;
   //Data Source=C:\Users\Svetozarnaj\YandexDisk\Проекты\AlphaSklad22\accessdb.mdb;Persist Security Info=False
  end;
    // Session1.Open;  ADOConnection
 // if not FileExists(Dir + 'db.udl') then CreateUDLFile(Dir + 'db.udl','Microsoft.Jet.OLEDB.4.0','.\db2\accessdb.mdb');
 {[oledb]
; Everything after this line is an OLE DB initstring
Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\db2\accessdb.accdb;Persist Security Info=False}
 // ADOConnection1.ConnectionString := 'FILE NAME=' + dir + 'db.udl';
  { If Not DirectoryExists(Database1.Params.Values['PATH']) or not (FileExists(Database1.Params.Values['PATH'])) Then
    //If SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], 1000) Then
    ShowDBConnectionForm;
  }
  FlgDBerr:=OpenDB;
  if not FlgDBerr then
  begin
  ShowDBConnectionForm;
 FlgDBerr:=OpenDB;
   // if FileExists(Dir + 'db.udl') then DeleteFile(Dir + 'db.udl') ;
   //  CreateUDLFile(Dir + 'db.udl',ADOConnection1.Provider,ADOConnection1. '.\db2\accessdb.mdb');

  end;
  if not FlgDBerr then
  ShowMessage('Ошибка открытия базы!');

end;

function TDataUnit.OpenDB: boolean;
begin
 Try

   // Database1.Open;
    // Sklad.Open;
    // LogIncoming.Open;
    // LogSale.Open;
    // Passports.Open;
    // Periods.Open;
    // Packs.Open;
    ADOConnection1.Connected := true;
    ADOsklad.Open;
    ADOIncomingLog.Open;
    ADOSaleLog.Open;
    ADOPassports.Open;
    result:=true;
  Except
    on E: Exception do
    begin
     // ShowMessage('Ошибка открытия базы! ' + E.Message);
      result:=false;
      //Application.Terminate;
    end;
 end;
end;

function TDataUnit.FindKey(KeyName, KeyValue, TableName: string): integer;
var
  s: string;
  rs: _Recordset;
begin // поиск ключа в таблице
  try
    ADOCommand1.CommandText := 'SELECT ' + KeyName + ' FROM ' +
      QuotedStr(TableName) + ' WHERE ' + KeyName + '=' + QuotedStr(KeyValue);
    rs := ADOCommand1.Execute;
    if rs.RecordCount > 0 then
      result := rs.Fields.Item[0].Value // todo : проверка типа!!на нуль
    else
      result := -1;
    // ADOQuery1.Close;
  finally
  end;
end;

Procedure TDataUnit.ReadYears(Var Y1, Y2: String; Cmd: TADOQuery;
  StrFieldNames, StrTableName, StrFilter: String);
Var
  rs: _Recordset;
Begin
  Y1 := '';
  Y2 := '';
  rs := QueryRecordset(Cmd, StrFieldNames, StrTableName, StrFilter);
  If rs.RecordCount < 1 Then
    exit;
  Y1 := rs.Fields[0].Value;
  Y2 := rs.Fields[1].Value;
End;

Function TDataUnit.QueryRecordset(Cmd: TADOQuery;
  StrFieldNames, StrTableName: String; StrFilter: String = ''): _Recordset;
Var
  SqlStr: String;
Begin
Cmd.Close;
  SqlStr := 'SELECT ' + StrFieldNames + ' FROM ' + StrTableName + ' WHERE ' +
    StrFilter;
  Cmd.SQL.Text := SqlStr;
  Cmd.Open;
  result := Cmd.Recordset;
  If result.RecordCount < 1 Then
    exit;
  result.MoveFirst;
End; //

procedure TDataUnit.DataModuleDestroy(Sender: TObject);
begin
  FormStorage1.SaveFormPlacement;
end;

procedure TDataUnit.DSSkladDataChange(Sender: TObject; Field: TField);
begin
  FlagChangeDB := true;
end;

procedure TDataUnit.LogIncomingAfterClose(DataSet: TDataSet);
begin
  // LogIncoming.CommitUpdates;  { TODO : CommitUpdates!!! }
end;

procedure TDataUnit.LogIncomingAfterOpen(DataSet: TDataSet);
begin
  SummFieldsLogIncoming;
  { try
    MainForm.SetSkladSumm;
    except
    end; }
end;

procedure TDataUnit.LogSaleAfterClose(DataSet: TDataSet);
begin
  // LogSale.CommitUpdates;
end;

procedure TDataUnit.LogSaleAfterOpen(DataSet: TDataSet);
begin
  SummFieldsLogSale;
  { try
    MainForm.SetSkladSumm;
    except
    end; }
end;

procedure TDataUnit.PassportsAfterClose(DataSet: TDataSet);
begin
  /// Passports.CommitUpdates;
end;

procedure TDataUnit.SkladAfterClose(DataSet: TDataSet);
begin
  // Sklad.CommitUpdates;
end;

procedure TDataUnit.SkladAfterOpen(DataSet: TDataSet);
begin
  SummFieldsSklad;
  { try
    MainForm.SetSkladSumm;
    except
    end; }
end;

procedure TDataUnit.SummFieldsLogIncoming;
var
  c: integer;
  NN_items, NNet_Weight, NGross_Weight: Extended;
  bm: TBookmark;
begin

  With ADOIncomingLog Do
  Begin
    bm := GetBookmark;
    Try
      DisableControls;
      c := RecordCount;
      LogIncomingNum_Records := IntToStr(c);
      NN_items := 0;
      NNet_Weight := 0;
      NGross_Weight := 0;
      If ADOIncomingLog.FindFirst Then
        Repeat
          NN_items := NN_items + FieldByName('N_items').AsFloat;
          NNet_Weight := NNet_Weight + FieldByName('Net_Weight').AsFloat;
          NGross_Weight := NGross_Weight + FieldByName('Gross_Weight').AsFloat;
        Until Not ADOIncomingLog.FindNext;
      GotoBookmark(bm);
    Finally
      FreeBookmark(bm);
      EnableControls;
    End;
  End;
  LogIncomingNum_N_Items := FloatToStr(NN_items);
  LogIncomingNum_Net_Weight := FloatToStr(NNet_Weight);
  LogIncomingNum_Gross_Weight := FloatToStr(NGross_Weight);
end;

procedure TDataUnit.SummFieldsLogSale;
var
  c: integer;
  NN_items, NNet_Weight, NGross_Weight: Extended;
  NStorage_fee: Currency;
  bm: TBookmark;
begin
  With ADOSaleLog Do
  Begin
    bm := GetBookmark;
    Try
      DisableControls;
      c := RecordCount;
      LogSaleNum_Records := IntToStr(c);
      NN_items := 0;
      NNet_Weight := 0;
      NGross_Weight := 0;
      NStorage_fee := 0;
      If ADOSaleLog.FindFirst Then
        Repeat
          NN_items := NN_items + FieldByName('N_items').AsFloat;
          NNet_Weight := NNet_Weight + FieldByName('Net_Weight').AsFloat;
          NGross_Weight := NGross_Weight + FieldByName('Gross_Weight').AsFloat;
          NStorage_fee := NStorage_fee + FieldByName('Storage_fee').AsCurrency;
        Until Not ADOSaleLog.FindNext;
      GotoBookmark(bm);
    Finally
      FreeBookmark(bm);
      EnableControls;
    End;
  End;
  LogSaleNum_N_Items := FloatToStr(NN_items);
  LogSaleNum_Net_Weight := FloatToStr(NNet_Weight);
  LogSaleNum_Gross_Weight := FloatToStr(NGross_Weight);
  LogSaleNum_Storage_fee := currtostr(NStorage_fee);
end;

procedure TDataUnit.SummFieldsSklad;
var
  c: integer;
  NN_items, NNet_Weight, NGross_Weight: Extended;
  bm: TBookmark;
begin
  With ADOsklad Do
  Begin
    bm := GetBookmark;
    Try
      DisableControls;
      // bm:=TBookMark.Create(Self);
      c := RecordCount;
      SkladNum_Records := IntToStr(c);
      NN_items := 0;
      NNet_Weight := 0;
      NGross_Weight := 0;
      If ADOsklad.FindFirst Then
        Repeat
          NN_items := NN_items + FieldByName('N_items').AsFloat;
          NNet_Weight := NNet_Weight + FieldByName('Net_Weight').AsFloat;
          NGross_Weight := NGross_Weight + FieldByName('Gross_Weight').AsFloat;
        Until Not ADOsklad.FindNext;
      GotoBookmark(bm);
    Finally
      FreeBookmark(bm);
      EnableControls;
    End;
  End;
  SkladNum_N_Items := FloatToStr(NN_items);
  SkladNum_Net_Weight := FloatToStr(NNet_Weight);
  SkladNum_Gross_Weight := FloatToStr(NGross_Weight);

end;

End.
