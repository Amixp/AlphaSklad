Unit Data1;

Interface

Uses Controls,
  Forms,
  SysUtils,
  Dialogs,
  DBTables,
  Classes,
  DB,
  ADODB,
  FileCtrl, JvComponent, JvFormPlacement, JvComponentBase;

Type
  TDataUnit = class(TDataModule)
    Database1: TDatabase;
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
    function QueryRecordset(Cmd: TADOCommand; StrFieldNames, StrTableName: String;
      StrFilter: String= ''): _Recordset;
    procedure ReadYears(var Y1, Y2: String; Cmd: TADOCommand; StrFieldNames,
      StrTableName, StrFilter: String);
    function FindKey(KeyName, KeyValue, TableName: string): integer;
     private

  end;

Var
  FlagChangeDB: Boolean;
  DataUnit: TDataUnit;
  SkladNum_Records, SkladNum_N_Items, SkladNum_Net_Weight, SkladNum_Gross_Weight: String;
  LogIncomingNum_Records, LogIncomingNum_N_Items, LogIncomingNum_Net_Weight, LogIncomingNum_Gross_Weight: String;
  LogSaleNum_Records, LogSaleNum_N_Items, LogSaleNum_Net_Weight, LogSaleNum_Gross_Weight, LogSaleNum_Storage_fee: String;
Implementation

Uses UnitSklad1,
  Datas1, FormOptions1;

{$R *.dfm}

{
************************************ TData *************************************
}
procedure TDataUnit.DataModuleCreate(Sender: TObject);
var
  Dir: string;
begin
  FlagChangeDB := false;
  //Session1.Open;
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  If Not DirectoryExists(Database1.Params.Values['PATH']) Then
    If SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], 1000) Then
      // if OpenDialog1.Execute then
      Database1.Params.Values['PATH'] := Dir; //ExtractFilePath(openDialog1.FileName);
  Try

    Database1.Open;
  //  Sklad.Open;
    //LogIncoming.Open;
   // LogSale.Open;
   // Passports.Open;
    //Periods.Open;
    //Packs.Open;
    ADOConnection1.Connected:=true;
    ADOsklad.Open;
    ADOIncomingLog.Open;
    ADOSaleLog.Open;
    ADOPassports.Open;
  Except
    ShowMessage('Ошибка открытия базы!');
    Application.Terminate;
  End;
end;

function TDataUnit.FindKey(KeyName,KeyValue,TableName: string): integer;
var
  s: string;
  rs: _Recordset;
begin   // поиск ключа в таблице
  try
    ADOCommand1.CommandText := 'SELECT '+Keyname+' FROM '+QuotedStr(TableName)+' WHERE '+Keyname+'=' + QuotedStr(KeyValue);
    rs:=ADOCommand1.Execute;
    if rs.RecordCount > 0 then
      result := rs.Fields.Item[0].Value //todo : проверка типа!!на нуль
    else
      result := -1;
   // ADOQuery1.Close;
  finally
  end;
end;

Procedure TDataUnit.ReadYears(Var Y1, Y2: String; Cmd: TADOCommand; StrFieldNames, StrTableName, StrFilter: String);
  Var
  RS: _Recordset;
  Begin
  Y1 := '';
  Y2 := '';
  rs:=QueryRecordset(Cmd, StrFieldNames, StrTableName, StrFilter);
  If rs.RecordCount < 1 Then
  exit;
  Y1 := rs.Fields[0].Value;
  Y2 := rs.Fields[1].Value;
  End;

  Function TDataUnit.QueryRecordset(Cmd: TADOCommand; StrFieldNames, StrTableName: String; StrFilter: String = ''): _Recordset;
  Var
  SqlStr: String;
  Begin
  SqlStr := 'SELECT ' + StrFieldNames + ' FROM ' + StrTableName + ' WHERE ' + StrFilter;
  Cmd.CommandText := SqlStr;
  Result := Cmd.Execute;
  If Result.RecordCount < 1 Then
  exit;
  Result.MoveFirst;
  End; //

procedure TDataUnit.DSSkladDataChange(Sender: TObject; Field: TField);
begin
  FlagChangeDB := True;
end;

procedure TDataUnit.LogIncomingAfterClose(DataSet: TDataSet);
begin
 // LogIncoming.CommitUpdates;  { TODO : CommitUpdates!!! }
end;

procedure TDataUnit.LogIncomingAfterOpen(DataSet: TDataSet);
begin
  SummFieldsLogIncoming;
  {try
  MainForm.SetSkladSumm;
   except
  end;    }
end;

procedure TDataUnit.LogSaleAfterClose(DataSet: TDataSet);
begin
 // LogSale.CommitUpdates;
end;

procedure TDataUnit.LogSaleAfterOpen(DataSet: TDataSet);
begin
  SummFieldsLogSale;
  {try
  MainForm.SetSkladSumm;
   except
  end; }
end;

procedure TDataUnit.PassportsAfterClose(DataSet: TDataSet);
begin
  ///Passports.CommitUpdates;
end;

procedure TDataUnit.SkladAfterClose(DataSet: TDataSet);
begin
 // Sklad.CommitUpdates;
end;

procedure TDataUnit.SkladAfterOpen(DataSet: TDataSet);
begin
  SummFieldsSklad;
  {try
  MainForm.SetSkladSumm;
   except
  end; }
end;

procedure TDataUnit.SummFieldsLogIncoming;
var
  c: Integer;
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
  c: Integer;
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
  c: Integer;
  NN_items, NNet_Weight, NGross_Weight: Extended;
  bm: TBookMark;
begin
  With ADOsklad Do
  Begin
    bm := GetBookmark;
    Try
      DisableControls;
      //bm:=TBookMark.Create(Self);
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

