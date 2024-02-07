Unit DataUnit1;

Interface

Uses Controls,
  Forms,
  SysUtils,
  Dialogs, System.Variants,
  System.Types, System.Classes,
  System.AnsiStrings,
  DB, UnitSklad1,
  ADODB,
  FileCtrl, JvComponent, JvFormPlacement, JvComponentBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.VCLUI.Error, FireDAC.Comp.UI, FireDAC.VCLUI.Login,
 FireDAC.VCLUI.Wait, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase;



const
  gDebugMode: boolean = true;
  gSqlMonitor: boolean = true;


Type
      TSumms= array of Extended;
  TDataUnit = class(TDataModule)
    DSLogIncoming: TDataSource;
    DSLogSale: TDataSource;
    DSPassports: TDataSource;
    DSSklad: TDataSource;
    FormStorage1: TjvFormStorage;
    OpenDialog1: TOpenDialog;
    ADOConnection1_: TADOConnection;
    ADOCommand1_: TADOCommand;
    ADODataSet1_: TADODataSet;
    ADOsklad0: TADOTable;
    ADOIncomingLog1: TADOTable;
    ADOSaleLog1: TADOTable;
    ADOPassports1: TADOTable;
    ADOQuery1_: TADOQuery;
    ADOQuery2: TADOQuery;
    cmd1_: TADOCommand;
    QSklad11: TADOQuery;
    ADOIncomingLog11: TADOQuery;
    ADOSaleLog11: TADOQuery;
    ADOPassports11: TADOQuery;
    FDConn: TFDConnection;
    fdmtbl1: TFDMemTable;
    FDQueryCmd: TFDQuery;
    fdtbl1: TFDTable;
    fdmngr1: TFDManager;
    FDCommand: TFDCommand;
    FDSklad: TFDQuery;
    FDIncomingLog: TFDQuery;
    FDSaleLog: TFDQuery;
    FDPassports: TFDQuery;
    FDQuery5: TFDQuery;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDTransaction1: TFDTransaction;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
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
    function QueryRecordset( StrFieldNames, StrTableName: String;
      StrFilter: String = ''): tfdquery;
    procedure ReadYears(var Y1, Y2: String; Cmd: TFDQuery;
      StrFieldNames, StrTableName, StrFilter: String);
    function FindKey(KeyName, KeyValue, TableName: string;fLike: Boolean=false): integer;
    procedure DataModuleDestroy(Sender: TObject);
    procedure ShowDBConnectionForm;
    function OpenDB: boolean;
    function AddKey(KeyNames, KeyValues, TableName: string): integer;
    function GetLastIndex(TableName: string): integer;
    procedure IncomingLog(tblSklad: Tsklad);
    procedure SaleLog(tblSklad: Tsklad);
    procedure dbConnectionExecuteComplete(Connection: TADOConnection;
      RecordsAffected: integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure dbConnectionWillExecute(Connection: TADOConnection;
      var CommandText: WideString; var CursorType: TCursorType;
      var LockType: TADOLockType; var CommandType: TCommandType;
      var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
      const Command: _Command; const Recordset: _Recordset);
    procedure ADOConnection1_ConnectComplete(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
    procedure ADOConnection1_WillConnect(Connection: TADOConnection;
      var ConnectionString, UserID, Password: WideString;
      var ConnectOptions: TConnectOption; var EventStatus: TEventStatus);
    procedure FDConnError(ASender, AInitiator: TObject;
      var AException: Exception);

    function SummFieldsSklad_sql(summFields:string; sTable:string): TSumms;

    function GetKey(KeyName, KeyValue, TargetKey, TableName: string;
      fLike: boolean = False): variant;
          function QueryRecordset2(StrFieldNames, StrTableName: string;
       StrFilter: String = ''): TFDMemTable;
    function GetNameByKey(KeyField, Key, field2, sTableName: string): string;
    procedure FDConnRecover(ASender, AInitiator: TObject; AException: Exception;
      var AAction: TFDPhysConnectionRecoverAction);

 private
         fExecuteTime: dword;
    function GetKey_old(KeyName, KeyValue, TargetKey, TableName: string; fLike: boolean = False): variant;

  end;

Var

  FlagChangeDB: boolean;
  DataUnit: TDataUnit;
  SkladNum_Records, SkladNum_N_Items, SkladNum_Net_Weight,
    SkladNum_Gross_Weight: String;
  LogIncomingNum_Records, LogIncomingNum_N_Items, LogIncomingNum_Net_Weight,
    LogIncomingNum_Gross_Weight: String;
  LogSaleNum_Records, LogSaleNum_N_Items, LogSaleNum_Net_Weight,
    LogSaleNum_Gross_Weight, LogSaleNum_Storage_fee: String;
  ComputerName: string;

Implementation

Uses
  Datas1, FormOptions1, UnitDBConnection, UnitService, UnitEvents;

{$R *.dfm}

{
  ************************************ TData *************************************
}
procedure TDataUnit.ShowDBConnectionForm();
begin
  FormDBConnection := TFormDBConnection.Create(self);
  FormDBConnection.sConnectionString := FDConn.ConnectionString;
  // FormDBConnection.sDBFile := Database1.Params.Values['PATH'];
  FormDBConnection.FormInit;
  FormDBConnection.ShowModal;
  FDConn.ConnectionString := FormDBConnection.sConnectionString;
  FormDBConnection.Free;
  // присвить результаты формы в переменные для компонента database1
end;

procedure TDataUnit.ADOConnection1_ConnectComplete(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  if Error <> nil then
  begin

     Log( 'Нет интернета по причине...' + Error.Description);
    ShowMessage('Нет интернета по причине...' + Error.Description);
  end;
end;

procedure TDataUnit.ADOConnection1_WillConnect(Connection: TADOConnection;
  var ConnectionString, UserID, Password: WideString;
  var ConnectOptions: TConnectOption; var EventStatus: TEventStatus);
begin
  UserID := 'sa';
  Password := 'Weronalika9';
end;

procedure TDataUnit.DataModuleCreate(Sender: TObject);
var
  dbfile, Dir,ConnStr: string;
  FlgDBerr: boolean; // флаг ошибки подключения к базе данных
begin
  FlgDBerr := false;
  Log('DataUnit init...', 2);
  // Database1.Close;
  FDConn.Close;
  FormStorage1.RestoreFormPlacement;
  FlagChangeDB := false;

//  cs:=TFDConnection.Create(nil);
// FDConn.Connected:=False;
 FDConn.Params.Clear;
 FDConn.Params.Values['Login Prompt']:='False';
 FDConn.Params.Values['DriverID']:='MSSQL';
 FDConn.Params.Values['DriverName']:='MSSQL';
 FDConn.Params.Values['Database']:='asklad';
 FDConn.Params.Values['lockingmode']:='lmExclusive';
 FDConn.Params.Values['JournalMode']:='jmMemory';
 FDConn.Params.Values['Synchronous']:='snNormal';
 FDConn.Params.Values['LoginTimeout']:='1';
 FDConn.Params.Values['BusyTimeout']:='5000';
 FDConn.Params.Values['SharedCache']:='True';
 FDConn.Params.Values['CacheSize']:='100000';
 FDConn.UpdateOptions.LockWait:=true;
 FDConn.TxOptions.Isolation:=xiSerializible;

  // ADOConnection1.LoginPrompt:=true;
  // Dir := ExtractFilePath(Application.ExeName);
  // if FileExists(Dir + 'accessdb.mdb') then
  // begin
  // ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;\Data Source="'+Dir + 'accessdb.mdb";Persist Security Info=False';
  if not AnsiContainsText(FDConn.ConnectionString,
    'Workstation ID=' + MainForm.vComputerName) then
    FDConn.ConnectionString :=
      'ADOConnection1_ConnectionString=DriverID=MSSQL;Provider=SQLNCLI11.1;Persist Security Info=False;'
      + 'User ID=sa;Initial Catalog=asklad;Data Source=192.168.0.12;' +
      'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=' + MainForm.vComputerName + ';' +
      'Initial File Name="";Use Encryption for Data=False;' +
      'Tag with column collation when possible=False;MARS Connection=False;' +
      'DataTypeCompatibility=0;' +
      'Trust Server Certificate=False;Application Intent=READWRITE;';
 ConnStr :=
    'Database=asklad;Server=192.168.0.12' +
    ';ApplicationName=AlphaSkladViewer;LoginTimeout=1;DriverID=MSSQL';
  Log('Connection string: ' + ConnStr, 2);
try
//    fdconn.Ping;
   FDConn.Open(ConnStr,'sa','Weronalika9')   ;  // User_Name=sa;Password=Weronalika9
   except
//  on E: EFDException do
//    if E.FDCode = er_FD_ClntDbLoginAborted then
//      ; // user pressed Cancel button in Login dialog
  on E: EFDDBEngineException do
    case E.Kind of
    ekUserPwdInvalid: ; // user name or password are incorrect
    ekUserPwdExpired: ; // user password is expired
    ekServerGone: ;     // DBMS is not accessible due to some reason
    else                // other issues
    end;
      end;
  /// Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Database Password="";Data Source=C:\Users\artem\Documents\RAD Studio\Projects\AlphaSklad22\accessdb.mdb;Mode=Share Deny None;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;
  // Provider=Microsoft.Jet.OLEDB.4.0;
  // Data Source=C:\Users\Svetozarnaj\YandexDisk\Проекты\AlphaSklad22\accessdb.mdb;Persist Security Info=False
  // end;
  // Session1.Open;  ADOConnection
  // if not FileExists(Dir + 'db.udl') then CreateUDLFile(Dir + 'db.udl','Microsoft.Jet.OLEDB.4.0','.\db2\accessdb.mdb');
  { [oledb]
    ; Everything after this line is an OLE DB initstring
    Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\db2\accessdb.accdb;Persist Security Info=False }
  // ADOConnection1.ConnectionString := 'FILE NAME=' + dir + 'db.udl';
  { If Not DirectoryExists(Database1.Params.Values['PATH']) or not (FileExists(Database1.Params.Values['PATH'])) Then
    //If SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], 1000) Then
    ShowDBConnectionForm;
  }
  Log('Start open DB...', 2);
  FlgDBerr := OpenDB;
  if not FlgDBerr then
  begin
    ShowDBConnectionForm;
    FlgDBerr := OpenDB;
    // if FileExists(Dir + 'db.udl') then DeleteFile(Dir + 'db.udl') ;
    // CreateUDLFile(Dir + 'db.udl',ADOConnection1.Provider,ADOConnection1. '.\db2\accessdb.mdb');

  end;
  if not FlgDBerr then
  begin
    ShowMessage('Ошибка открытия базы!');
    Log('Ошибка открытия базы!', 3);
  end;
       //http://digital-flame.ru/2016/01/23/delphi-firedac-upravlenie-tranzaktsiyami/
  Try
  FDConn.TxOptions.Isolation:=xiSerializible; //Serializable (сериализуемость) – самый надежный уровень изоляции, полностью исключающий взаимное влияние транзакций.
    FDConn.StartTransaction;
    Log('StartTransaction!', 2);
  Except
    ShowMessage
      ('Ошибка создания транзанкции! Отмены изменений в базе данных не будет!');
    Log('Error begintrans!', 3);
  End;
end;

function TDataUnit.OpenDB: boolean;
begin
  Try

    FDConn.Connected := true;
    Log('ADOConnection connected.', 2);
    FDSklad.Open;
    Log('tblSklad connected.', 2);
    FDIncomingLog.Open;
    Log('ADOIncomingLog connected.', 2);
    FDSaleLog.Open;
    Log('ADOSaleLog connected.', 2);
    FDPassports.Open;
    Log('ADOPassports connected.', 2);
    result := true;
  Except
    on E: Exception do
    begin
     // ShowMessage('Ошибка открытия базы! ' + E.Message);
      result := false;
      Log('Ошибка открытия базы! ' + E.Message, 3);
      // Application.Terminate;
    end;
  end;
end;

function TDataUnit.GetLastIndex(TableName: string): integer;
begin
  // QueryRecordset(ADOQuery1,'Id','IncomingLog',)
end;

function TDataUnit.FindKey(KeyName, KeyValue, TableName: string;fLike: boolean = False): integer;
var
  s: string;
  rsv: Variant;
  rs: _Recordset;
begin // поиск ключа в таблице
  try
  if fLike then
      rsv:=FDConn.ExecSQLScalar('SELECT :KeyName FROM :TableName WHERE :KeyName like :KeyValue',[KeyName,TableName,KeyValue])
      else
    rsv:=FDConn.ExecSQLScalar('SELECT :KeyName FROM :TableName WHERE :KeyName=:KeyValue',[KeyName,TableName,KeyValue]);

    if VarIsNumeric(rsv) then
       result:=rsv
    else
       result:=-1;

  except
  end;
end;

function TDataUnit.GetKey(KeyName, KeyValue, TargetKey, TableName: string; fLike: boolean = False): variant;
var
  s: string;
  rsv: Variant;
  rs: _Recordset;
begin // поиск ключа в таблице
  try
  FDConn.
  if fLike then
      rsv:=FDConn.ExecSQLScalar('SELECT :TargetKey FROM :TableName WHERE :KeyName like :KeyValue',[TargetKey,TableName,KeyName,KeyValue],[ftString,ftString,ftString,ftString])
      else                   // TODO: Обьявить переменную
      rsv:=FDConn.ExecSQLScalar('SELECT :TargetKey FROM :TableName WHERE :KeyName = :KeyValue',[TargetKey,TableName,KeyName,KeyValue],[ftString,ftString,ftString,ftString])  ;

    if not VarIsEmpty(rsv) then
       result:=rsv
    else
       result:=-1;
  except
  end;
end;

function TDataUnit.GetKey_old(KeyName, KeyValue, TargetKey, TableName: string; fLike: boolean = False): variant;
var
  s: string;
  rsv: Variant;
  rs: _Recordset;
begin // поиск ключа в таблице
  try
  if fLike then
      rsv:=FDConn.ExecSQLScalar('SELECT :TargetKey FROM :TableName WHERE :KeyName like :KeyValue',[TargetKey,TableName,KeyName,KeyValue],[ftString,ftString,ftString,ftString])
      else
    rsv:=FDConn.ExecSQLScalar('SELECT :TargetKey FROM :TableName WHERE :KeyName=:KeyValue',[TargetKey,TableName,KeyName,KeyValue],[ftString,ftString,ftString,ftString]);

    if not VarIsEmpty(rsv) then
       result:=rsv
    else
       result:=-1;

  except
  end;
end;

procedure TDataUnit.IncomingLog(tblSklad: Tsklad);
var
  s, s1: string;
begin
 with  DataUnit.FDQueryCmd do
 begin
  Params.Clear;
  s := 'INSERT INTO [IncomingLog] ( [DateTime] ,[NameProd]' + '  ,[Producer]' +
    '  ,[Transport]' + '  ,[Fridge]' + '  ,[Sklad]' + '  ,[Date]' + '  ,[Lot]' +
    '  ,[Weight_place]' + '  ,[N_Items]' + '  ,[Net_weight]' +
    '  ,[Gross_weight]' + '  ,[Comment]' + '  ,[Color])' +
    ' VALUES ( :DateTime, :NameProd, :Producer, :Transport, ' +
    ':Fridge, :SkladSvid, :DateSkl,  :Lot, :Weight_place, ' +
    ':NItems, :Netweight, :Grossweight, :Comment, :Color )';
  // FormatSettings.DecimalSeparator := '.';
  { s1 := 'INSERT INTO IncomingLog ' + '( DateTime' + '  ,NameProd' +
    '  ,Producer' + '  ,Transport' + '  ,Fridge' + '  ,Sklad' + '  ,Date' +
    '  ,Lot' + '  ,Weight_place' + '  ,N_Items' + '  ,Net_weight' +
    '  ,Gross_weight' + '  ,Comment' + '  ,Color)' +
    ' VALUES ( ''11.11.11 1:1:1'', ' + ansiQuotedStr(tblSklad.NameProd, '''') +
    ', ' + ansiQuotedStr(tblSklad.Producer, '''') + ', ' +
    ansiQuotedStr(tblSklad.Transport, '''') + ', ' +
    ansiQuotedStr(tblSklad.Fridge, '''') + ', ' +
    ansiQuotedStr(tblSklad.SkladSvid, '''') + ', ' + ansiQuotedStr('12.12.12',
    '''') + ', ' + ansiQuotedStr(tblSklad.Lot, '''') + ', ' +
    ansiQuotedStr(tblSklad.Weightplace, '''') + ', ' +
    FormatFloat('#0.####;;Zero', tblSklad.NumPlaces) + ', ' +
    FormatFloat('#0.####;;Zero', tblSklad.Netweight) + ', ' +
    FormatFloat('#0.####;;Zero', tblSklad.Grossweight) + ', ' +
    ansiQuotedStr(tblSklad.Comment, '''') + ', ' +
    ansiQuotedStr(inttostr(tblSklad.Color), '''') + ')'; }
  // DataUnit.FDCommand.Prepared:=true;
  // DataUnit.FDCommand.ParamCheck:=false;
  //Command. := skInsert;
  ResourceOptions.ParamCreate := True;
  SQL.Text := s;
  Log(s);
  // DataUnit.FDCommand.Parameters.ParseSQL(DataUnit.FDCommand.CommandText,True);
  // DataUnit.FDCommand.CommandType:= cmdText;
  //DataUnit.FDCommand.ParamCheck := true;

    With Params, tblSklad Do
    Begin
     { Clear;
      CreateParam(ftDateTime,'DateTime',  pdInput, 0);
      CreateParam(ftString, 'NameProd',pdInput, 50);
      CreateParam(ftString, 'Producer', pdInput, 50 );
      CreateParam(ftString, 'Transport', pdInput, 50 );
      CreateParam(ftString, 'Fridge', pdInput, 50 );
      CreateParam(ftString, 'SkladSvid', pdInput, 50 );
      CreateParam(ftDate, 'DateSkl', pdInput, 0 );
      CreateParam(ftString, 'Lot', pdInput, 50 );
      CreateParam(ftString, 'Weight_place', pdInput, 50 );
      CreateParam(ftString, 'NItems', pdInput, 50 );
      CreateParam(ftString, 'Netweight', pdInput, 50);
      CreateParam(ftString, 'Grossweight', pdInput, 50);
      CreateParam(ftString, 'Comment', pdInput, 250);
      CreateParam(ftInteger, 'Color', pdInput, 50); }
      ParamByName('DateTime').AsDateTime:=Now;
      ParamByName('NameProd').AsString:=  NameProd;
      ParamByName('Producer').AsString:=  Producer;
      ParamByName('Transport').AsString:=  Transport;
      ParamByName('Fridge').AsString:= Fridge;
      ParamByName('SkladSvid').AsString:=SkladSvid;
      ParamByName('DateSkl').AsDate:= Now;
      ParamByName('Lot').AsString:=  Lot;
      ParamByName('Weight_place').AsString:=  Weightplace ;
      ParamByName('NItems').AsString:=  FloatToStr(NumPlaces);
      ParamByName('Netweight').AsString:=  FloatToStr(Netweight);
      ParamByName('Grossweight').AsString:=  FloatToStr(Grossweight);
      ParamByName('Comment').AsString:=  Comment;
      ParamByName('Color').AsInteger:=  Color;

    End; (* with *)


  ExecSQL;
 end;
  DataUnit.FDIncomingLog.Refresh;
  // *****************
end;

procedure TDataUnit.SaleLog(tblSklad: Tsklad);
begin
  // FormatSettings.DecimalSeparator := '.';
  //DataUnit.FDQueryCmd.CommandKind := skInsert;
  DataUnit.FDQueryCmd.ResourceOptions.ParamCreate := True;
  DataUnit.FDQueryCmd.Params.Clear;
  DataUnit.FDQueryCmd.sql.text := 'INSERT INTO [SaleLog] ( [DateTime]' +
    '  ,[NameProd]' + '  ,[Producer]' + '  ,[Transport]' + '  ,[Fridge]' +
    '  ,[Sklad]' + '  ,[Date]' + '  ,[Lot]' + '  ,[Weight_place]' +
    '  ,[N_Items]' + '  ,[Net_weight]' + '  ,[Gross_weight]' + '  ,[Name]' +
    '  ,[NumLetter]' + '  ,[Color])' +
    ' VALUES (:DateTime, :NameProd, :Producer, :Transport, ' +
    ':Fridge, :SkladSvid, :DateSkl, :Lot, :Weightplace, ' +
    ':NItems, :Netweight, :Grossweight, :NameClient, :NumLetter, :Color )';
  { DataUnit.FDCommand.Parameters.ParseSQL
    (DataUnit.FDCommand.CommandText, true); }
  //DataUnit.FDCommand.ParamCheck := true;
  With DataUnit.FDQueryCmd.Params Do
  Begin
    With tblSklad Do
    Begin
      Clear;
      {CreateParam('DateTime', ftDateTime, pdInput, 0, Now);
      // ansiQuotedStr(DateTimeToStr( Now),'"');
      CreateParam('NameProd', ftString, pdInput, 50, NameProd);
      CreateParam('Producer', ftString, pdInput, 50, Producer);
      CreateParam('Transport', ftString, pdInput, 50, Transport);
      CreateParam('Fridge', ftString, pdInput, 50, Fridge);
      CreateParam('SkladSvid', ftString, pdInput, 50, SkladSvid);
      CreateParam('DateSkl', ftDate, pdInput, 0, StorageDate );      // old (LogDateTime)
      CreateParam('Lot', ftString, pdInput, 50, Lot);
      CreateParam('Weightplace', ftString, pdInput, 50, Weightplace);
      CreateParam('NItems', ftString, pdInput, 50, FloatToStr(NumPlaces));
      CreateParam('Netweight', ftString, pdInput, 50,
        FloatToStr(Netweight));
      CreateParam('Grossweight', ftString, pdInput, 50,
        FloatToStr(Grossweight));
      CreateParam('NameClient', ftString, pdInput, 250, Client);
      CreateParam('Color', ftInteger, pdInput, 50, Color);
      CreateParam('NumLetter', ftString, pdInput, 50,
        IntToStr(NumberLetter));  }
            ParamByName('DateTime').AsDateTime:=Now;
      ParamByName('NameProd').AsString:=  NameProd;
      ParamByName('Producer').AsString:=  Producer;
      ParamByName('Transport').AsString:=  Transport;
      ParamByName('Fridge').AsString:= Fridge;
      ParamByName('SkladSvid').AsString:=SkladSvid;
      ParamByName('DateSkl').AsDate:= Now;
      ParamByName('Lot').AsString:=  Lot;
      ParamByName('Weight_place').AsString:=  Weightplace ;
      ParamByName('NItems').AsFloat:=  (NumPlaces);
      ParamByName('Netweight').AsFloat:=  (Netweight);
      ParamByName('Grossweight').AsFloat:=  (Grossweight);
      ParamByName('Comment').AsString:=  Comment;
      ParamByName('Color').AsInteger:=  Color;
      ParamByName('NumLetter').AsInteger:=  NumberLetter;
    End; (* with *)
  End; (* with *)

  DataUnit.FDQueryCmd.ExecSQL;
  DataUnit.FDSaleLog.Refresh;
  // *****************
end;

function TDataUnit.GetNameByKey(KeyField, Key, field2,sTableName: string): string;
var
  v: variant;
begin

  v := DataUnit.getkey(KeyField, Key, field2,sTableName);
  if v <> False then
    result := VarToStr(v);
end;

function TDataUnit.AddKey(KeyNames, KeyValues, TableName: string): integer;
var
  s: string;
  rs: _Recordset;
  rsv: Variant;
begin // поиск ключа в таблице
  try
   rsv:=FDConn.ExecSQLScalar('INSERT INTO  :TableName (:KeyNames) VALUES (:KeyValues)',[TableName,KeyNames,KeyValues]);

    if VarIsNumeric(rsv) then
       result:=rsv
    else
       result:=-1;

  except
  result:=-1;
  end;
end;

Procedure TDataUnit.ReadYears(Var Y1, Y2: String; Cmd: TFDQuery;
  StrFieldNames, StrTableName, StrFilter: String);
Var
  rs: _Recordset;
Begin
  Y1 := '';
  Y2 := '';
 { rs := QueryRecordset(Cmd, StrFieldNames, StrTableName, StrFilter);    }
  If rs.RecordCount < 1 Then
    exit;                { todo : не успользуется }
  Y1 := rs.Fields[0].Value;
  Y2 := rs.Fields[1].Value;
End;

Function TDataUnit.QueryRecordset(StrFieldNames, StrTableName: String; StrFilter: String = ''): TFDQuery;
Var
  SqlStr: String;
Begin
DataUnit.FDQueryCmd.Close;
  SqlStr := 'SELECT ' + StrFieldNames + ' FROM ' + StrTableName + ' WHERE ' +
    StrFilter;
  DataUnit.FDQueryCmd.SQL.Text := StringReplace(SqlStr, '"', '''', [rfReplaceAll]);
  Log(DataUnit.FDQueryCmd.SQL.Text, 2);
  DataUnit.FDQueryCmd.Open;     { todo : не успользуется }
 result := DataUnit.FDQueryCmd;
  If result.RecordCount < 1 Then
    exit;
 // result.MoveFirst;
End; //

Function TDataUnit.QueryRecordset2(StrFieldNames, StrTableName: String; StrFilter: String = ''): TFDMemTable;
Var
  i: Integer;

  FDQuery1: TFDQuery;
begin
FDQuery1:=TFDQuery.Create(nil);
try
  //FDConnection1.ResourceOptions.ServerOutput := True;
  FDQuery1.Connection:=DataUnit.FDConn;
  FDQuery1.FetchOptions.AutoClose := False;
  if StrFilter<>'' then StrFilter:=' WHERE '+ StrFilter;
  FDQuery1.Open('select '+ StrFieldNames+ ' from '+StrTableName+StrFilter);
  result.Data := FDQuery1.Data;  { TODO 3 : ошибка получения данных }
  //Memo1.Lines.Add(Format('%d rows processed', [FDMemTable1.RecordCount]));
  //FDQuery1.NextRecordSet;
  {if FDConnection1.Messages <> nil then
    for i := 0 to FDConnection1.Messages.ErrorCount - 1 do
      Memo1.Lines.Add(FDConnection1.Messages[i].Message);  }
  finally
  FDQuery1.free;
end;
{var
  i: Integer;
begin
  FDConnection1.ResourceOptions.ServerOutput := True;
  FDQuery1.FetchOptions.AutoClose := False;
  FDQuery1.Open('select * from Region; print ''Hello''');
  FDMemTable1.Data := FDQuery1.Data;
  Memo1.Lines.Add(Format('%d rows processed', [FDMemTable1.RecordCount]));
  FDQuery1.NextRecordSet;
  if FDConnection1.Messages <> nil then
    for i := 0 to FDConnection1.Messages.ErrorCount - 1 do
      Memo1.Lines.Add(FDConnection1.Messages[i].Message);
end;}
end;

procedure TDataUnit.DataModuleDestroy(Sender: TObject);
begin
  FormStorage1.SaveFormPlacement;
end;

procedure TDataUnit.DSSkladDataChange(Sender: TObject; Field: TField);
begin
  FlagChangeDB := true;
end;

procedure TDataUnit.FDConnError(ASender, AInitiator: TObject;
  var AException: Exception);
var
  oExc: EFDDBEngineException;
begin
  if AException is EFDDBEngineException then begin
    oExc := EFDDBEngineException(AException);
    if oExc.Kind = ekRecordLocked then
      oExc.Message := 'Please, try the operation later. At moment, the record is busy'
    else if (oExc.Kind = ekUKViolated) and SameText(oExc[0].ObjName, 'UniqueKey_Orders') then
      oExc.Message := 'Please, provide the unique order information. It seems, your order was already put';
  end;
end;

procedure TDataUnit.FDConnRecover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
var
  iRes: Integer;
begin
  iRes := MessageDlg('Connection is lost. Offline - yes, Retry - ok, Fail - Cancel',
    mtConfirmation, [mbYes, mbOK, mbCancel], 0);
  case iRes of
  mrYes:    AAction := faOfflineAbort;
  mrOk:     AAction := faRetry;
  mrCancel: AAction := faFail;
  end;
  Log('Connection is recovering');

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
  /// ad

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
summs: TSumms;
begin
summs:=SummFieldsSklad_sql('SUM(N_Items),SUM(Net_weight),SUM(Gross_weight),SUM(Storage_fee)','IncomingLog');
LogSaleNum_N_Items := FloatToStr(summs[0]);
LogSaleNum_Net_Weight := FloatToStr(summs[1]);
LogSaleNum_Gross_Weight := FloatToStr(summs[2]);
  {
  With FDIncomingLog Do
  Begin
    bm := GetBookmark;
    Try
      DisableControls;
      c := RecordCount;
      LogIncomingNum_Records := IntToStr(c);
      NN_items := 0;
      NNet_Weight := 0;
      NGross_Weight := 0;
      If FDIncomingLog.FindFirst Then
        Repeat
          NN_items := NN_items + FieldByName('N_items').AsFloat;
          NNet_Weight := NNet_Weight + FieldByName('Net_Weight').AsFloat;
          NGross_Weight := NGross_Weight + FieldByName('Gross_Weight').AsFloat;
        Until Not FDIncomingLog.FindNext;
      GotoBookmark(bm);
    Finally
      FreeBookmark(bm);
      EnableControls;
    End;
  End;
  LogIncomingNum_N_Items := FloatToStr(NN_items);
  LogIncomingNum_Net_Weight := FloatToStr(NNet_Weight);
  LogIncomingNum_Gross_Weight := FloatToStr(NGross_Weight);    }
end;

procedure TDataUnit.SummFieldsLogSale;
var
  c: integer;
  NN_items, NNet_Weight, NGross_Weight: Extended;
  NStorage_fee: Currency;
  bm: TBookmark;
    summs: TSumms;
begin

summs:=SummFieldsSklad_sql('SUM(N_Items),SUM(Net_weight),SUM(Gross_weight),SUM(Storage_fee)','SaleLog');
   LogSaleNum_N_Items := FloatToStr(summs[0]);
  LogSaleNum_Net_Weight := FloatToStr(summs[1]);
  LogSaleNum_Gross_Weight := FloatToStr(summs[2]);
  LogSaleNum_Storage_fee := currtostr(summs[3]);
  {
  With FDSaleLog Do
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
      If FDSaleLog.FindFirst Then
        Repeat
          NN_items := NN_items + FieldByName('N_items').AsFloat;
          NNet_Weight := NNet_Weight + FieldByName('Net_Weight').AsFloat;
          NGross_Weight := NGross_Weight + FieldByName('Gross_Weight').AsFloat;
          NStorage_fee := NStorage_fee + FieldByName('Storage_fee').AsCurrency;
        Until Not FDSaleLog.FindNext;
      GotoBookmark(bm);
    Finally
      FreeBookmark(bm);
      EnableControls;
    End;
  End;
  LogSaleNum_N_Items := FloatToStr(NN_items);
  LogSaleNum_Net_Weight := FloatToStr(NNet_Weight);
  LogSaleNum_Gross_Weight := FloatToStr(NGross_Weight);
  LogSaleNum_Storage_fee := currtostr(NStorage_fee); }
end;

procedure TDataUnit.SummFieldsSklad;
var
  c: integer;
  NN_items, NNet_Weight, NGross_Weight: Extended;
  bm: TBookmark;
  summs: TSumms;
begin
summs:=SummFieldsSklad_sql('SUM(N_Items),SUM(Net_weight),SUM(Gross_weight)','sklad');
   SkladNum_N_Items := FloatToStr(summs[0]);
  SkladNum_Net_Weight := FloatToStr(summs[1]);
  SkladNum_Gross_Weight := FloatToStr(summs[2]);
{
  With QSklad Do
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
      If QSklad.FindFirst Then
        Repeat
          NN_items := NN_items + FieldByName('N_items').AsFloat;
          NNet_Weight := NNet_Weight + FieldByName('Net_Weight').AsFloat;
          NGross_Weight := NGross_Weight + FieldByName('Gross_Weight').AsFloat;
        Until Not QSklad.FindNext;
      GotoBookmark(bm);
    Finally
      FreeBookmark(bm);
      EnableControls;
    End;
  End;
  SkladNum_N_Items := FloatToStr(NN_items);
  SkladNum_Net_Weight := FloatToStr(NNet_Weight);
  SkladNum_Gross_Weight := FloatToStr(NGross_Weight);
    }
end;

function   TDataUnit.SummFieldsSklad_sql(summFields:string; sTable:string) : TSumms;
var
  Qry: TFDQuery;
  i: Integer;
  s: string;
begin
  SetLength(result,0);
  Qry := TFDQuery.Create(nil);
  try
    Qry.Connection := FDConn;
    Qry.SQL.Add('SELECT '+summFields+ ' FROM ' + sTable);
    Qry.Open;
    if Qry.Fields[0].IsNull then
      Exit
    else
     begin
         SetLength(result,Qry.Fields.Count);
     for I := Low(Qry.Fields.Count) to Qry.Fields.Count-1 do
    begin
    result[i]:=Qry.Fields[i].AsFloat;
     end;
     end;
  finally
    FreeAndNil(Qry);
  end;
end;

procedure TDataUnit.dbConnectionWillExecute(Connection: TADOConnection;
  var CommandText: WideString; var CursorType: TCursorType;
  var LockType: TADOLockType; var CommandType: TCommandType;
  var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
  const Command: _Command; const Recordset: _Recordset);
var
  i, j: integer;
  infoStr: String;
  tmpParameters: Parameters;
begin
 { if gDebugMode then
    Log('WillExecute.. ');
  fExecuteTime := System.Classes.TThread.GetTickCount;
  if gSqlMonitor and gDebugMode then
  begin
    Log(CommandText);
    if Assigned(Recordset) then
    begin
      for i := 0 to (ADOConnection1.DataSetCount - 1) do
        if Assigned(ADOConnection1.DataSets[i].Recordset) and
          (Recordset = ADOConnection1.DataSets[i].Recordset) then
          if (ADOConnection1.DataSets[i] is TADODataSet) and
            (TADODataSet(ADOConnection1.DataSets[i]).Parameters.Count > 0) then
            for j := 0 to TADODataSet(ADOConnection1.DataSets[i])
              .Parameters.Count - 1 do
            begin
              infoStr := 'P[' + IntToStr(j) + '] ' +
                TADODataSet(ADOConnection1.DataSets[i]).Parameters.Items[j]
                .Name + ' = ';
              if Not VarisNull(TADODataSet(ADOConnection1.DataSets[i])
                .Parameters.Items[j].Value) then
                infoStr := infoStr +
                  String(TADODataSet(ADOConnection1.DataSets[i])
                  .Parameters.Items[j].Value)
              else
                infoStr := infoStr + 'Null';
              Log(infoStr);
            end;
    end;
    if Assigned(Command) then
    begin
      tmpParameters := Command.Get_Parameters;
      if (tmpParameters.Count > 0) then
        for j := 0 to tmpParameters.Count - 1 do
        begin
          infoStr := tmpParameters.Item[j].Name + ' = ';
          if Not VarisNull(tmpParameters.Item[j].Value) then
            infoStr := infoStr + String(tmpParameters.Item[j].Value)
          else
            infoStr := infoStr + 'Null';
          Log(infoStr);
        end
    end;
    Log('');
  end;    }
end;

procedure TDataUnit.dbConnectionExecuteComplete(Connection: TADOConnection;
  RecordsAffected: integer; const Error: Error; var EventStatus: TEventStatus;
  const Command: _Command; const Recordset: _Recordset);
begin
  self.fExecuteTime := System.Classes.TThread.GetTickCount - self.fExecuteTime;
  if gDebugMode then
    Log('Execute time: ' + FloatToStr(self.fExecuteTime / 1000) + ' s.');
End;

end.
