unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DbxSqlite, Data.DBXPool,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Data.DB,
  JvComponentBase, JvFormPlacement, Data.Win.ADODB, Bde.DBTables, Vcl.StdCtrls,
  Vcl.Mask, JvExMask,
  JvToolEdit, Data.DBXCommon,
  FileCtrl, Vcl.Grids, Vcl.DBGrids, JvAppStorage, JvAppIniStorage, ExcelXP,
  Vcl.OleServer, AccessXP ;

  type TDBParam =record
      DatabaseName,
      DataFileName : string;
      end;

type
  TMainForm = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edDBPath1: TJvDirectoryEdit;
    edDBPath2: TJvDirectoryEdit;
    ListTables: TListBox;
    ListTables2: TListBox;
    btnImport1: TButton;
    Memo1: TMemo;
    DBImport: TDatabase;
    BDETable: TTable;
    ADOTable: TADOTable;
    ADOCommand: TADOCommand;
    ADOConnection1: TADOConnection;
    FormPlacement1: TJvFormStorage;
    DataSource1: TDataSource;
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    DataSource2: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ADOConnection2: TADOConnection;
    ADOCommand1: TADOCommand;
    ADOTable1: TADOTable;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    DataSource4: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    ADOConnection3: TADOConnection;
    Session1: TSession;
    JvFilenameEdit1: TJvFilenameEdit;
    acsplctn1: TAccessApplication;
    ExcelOLEObject1: TExcelOLEObject;
    procedure FormCreate(Sender: TObject);
    procedure btnImport1Click(Sender: TObject);
    procedure edDBPath1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edDBPath2Change(Sender: TObject);
  private
    procedure BuildSQL;
    procedure ListFoldersChange(Sender: TObject);
    procedure opendb2;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses UnitSQLcmds, UnitFunctions;
procedure TMainForm.ListFoldersChange(Sender: TObject);
var
  S: string;
  AliasParams: TStrings;
begin
  DBImport.Close;
  listtables.Items.Clear;
  s:=edDBPath1.Directory;
AliasParams := TStringList.create;
   try
     AliasParams.Values['SERVER NAME'] := s;
     AliasParams.Values['USER NAME'] := 'PARADOX';
     Session.AddStandardAlias(DBImport.AliasName, s, 'PARADOX') ;
     Session.SaveConfigFile;
   finally
     AliasParams.Free;
   end;
  DBImport.Open;
 DBImport.GetTableNames(ListTables.Items);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  // edDBPath2.Text:=DataUnit.Database1.Params.Values['PATH'];

  listtables2.Items.Clear;

 //DataUnit.Database1.GetTableNames(ListTables2.Items);
end;

procedure TMainForm.BuildSQL;
var i:integer;
    s:string;
    function AccessType(fd:TFieldDef):string;
begin
 case fd.DataType of
  ftString: Result:='TEXT('+IntToStr(fd.Size)+')';
  ftSmallint: Result:='SMALLINT';
  ftInteger: Result:='INTEGER';
  ftWord: Result:='WORD';
  ftBoolean: Result:='YESNO';
  ftFloat : Result:='FLOAT';

 else
  Result:='TEXT(50)';
 end;
end;
begin
BDETable.DatabaseName:=edDBPath1.Text;//+'\' + ListTables.Items[ListTables.ItemIndex]+'.db';
 BDETable.FieldDefs.Update;

 s:='CREATE TABLE ' + ListTables.Items[ListTables.ItemIndex] + ' (';
 with BDETable.FieldDefs do begin
  for i:=0 to Count-1 do begin
   s:=s + ' ' + Items[i].Name;
   s:=s + ' ' + AccessType(Items[i]);
   s:=s + ',';
  end; //for
  s[Length(s)]:=')';
 end;//with

 Memo1.Clear;
 Memo1.lines.Add (s);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
ADOConnection2.Connected:=true;

      try
      //Connection := frmDMS.ADOConnection1;
     ADOQuery1.SQL.Clear;
            ADOQuery1.SQL.Add('SELECT * INTO db.mdb FROM sklad');
//      ADOQuery1.SQL.Add('BACKUP DATABASE '+ 'DB'+' TO DISK='''+'db.txt'+''';');
      ADOQuery1.ExecSQL;
      except
        raise;
      end;

end;

procedure TMainForm.edDBPath1Change(Sender: TObject);
begin
if DirectoryExists(edDBPath1.Directory) then
ListFoldersChange(Sender);
end;

procedure TMainForm.edDBPath2Change(Sender: TObject);
begin
if FileExists(JvFilenameEdit1.FileName) then
OpenDB2;
end;

procedure tmainform.opendb2;
var
s:string;
begin
s:=JvFilenameEdit1.FileName;
ADOConnection1.Close;
ADOConnection1.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+s+';Persist Security Info=False';
ADOConnection1.LoginPrompt:=false;
ADOConnection1.Open();
ADOConnection1.GetTableNames(ListTables2.Items);
//acsplctn1.
   { TODO : загрузить модуль процедуры в базу Аксеса }
{
Sub importFromParadoxDB()

Dim f, path, s, p
path = "d:\Docs\Dropbox\Проекты\AlphaSklad22\Db"
f = Dir(path & "\*.db")
Do While Not f = ""
   p = Split(f, ".")
   If UBound(p) > 0 And p(1) = "db" Then
   DoCmd.TransferDatabase acImport, "Paradox 7.x", "d:\Docs\Dropbox\Проекты\AlphaSklad22\Db\", acTable, p(0), p(0)
   End If
   f = Dir
Loop

End Sub
}
end;

procedure TMainForm.btnImport1Click(Sender: TObject);
//Кнопка 'Create Table and copy data'
var
i:integer;
ColNames : array of string;
values: array of Variant;
   sqlCreateDBQuery, tblName:string;
    Transaction: TDBXTransaction  ;
  DBParam: tDBParam;
  DataFile: file;
  ch: ansichar;
begin
if ListTables.ItemIndex<0 then exit;

 tblName:=ListTables.Items[ListTables.ItemIndex];
 BDETable.TableName :=tblName;
//обновляем
BuildSQL;

    try
     DBParam.DatabaseName :='sklad1';
     DBParam.DataFileName :='sklad1.db';
     //--- create New database
    System.AssignFile(DataFile,DBParam.DataFileName );
    System.Rewrite(DataFile);
    ch:=#00;
    System.BlockWrite(DataFile,ch,0);
    System.CloseFile(DataFile);
    //-----

    SQLConnection1.Close;
   // SQLConnection1.ExecuteDirect('DROP DATABASE sklad1.db');
  //  SQLConnection1.ExecuteDirect('CREATE DATABASE sklad1.db');
   { SQLConnection1.params.text := 'DriverName=Sqlite'+
                         ', DATABASE = '+DBParam.DatabaseName;
   sqlCreateDBQuery := 'CREATE DATABASE '
                       + DBParam.DataFileName;
    SQLConnection1.ExecuteDirect( sqlCreateDBQuery);   }
  //  SQLConnection1.Open;
//удаление & создание таблицы
//ADOConnection1.ConnectionString:='Provider=MSDASQL;Data Source=.\db\db1.mdb;Persist Security Info=False';
  {  ADOConnection1.LoginPrompt := False ;
    ADOConnection1.Mode := cmShareDenyNone;
    ADOConnection1.Provider := 'MSDASQL';
    ADOConnection1.Open;
    ADOConnection1.BeginTrans;
 ADOCommand.CommandText:='DROP TABLE ' + tblName;
 ADOCommand.Execute;   }
 if SQLConnection1.TransactionsSupported then
   Transaction:=SQLConnection1.BeginTransaction;
// SQLConnection1.ExecuteDirect('DROP TABLE ' + tblName);
       except
         end;
         try
{ ADOCommand.CommandText:=Memo1.Text;
 ADOCommand.Execute;   }
 SQLConnection1.ExecuteDirect(Memo1.Text);
 except
   end;
{ ADOTable.TableName:=tblName;    }

//копируем данные
SQLQuery1.sql.Clear;
SQLQuery1.SQL.Add('SELECT * FROM ' + tblName);
 SQLConnection1.Open;
 BDETable.Open;
 //ADOTable.Open;
 SQLQuery1.Open;

 try
   setlength(values,BDETable.Fields.Count);
   setlength(ColNames,BDETable.Fields.Count);
 BDETable.First;
  while not BDETable.Eof do begin
//SQLQuery1.Insert;
   for i:=0 to BDETable.Fields.Count-1 do begin
   { SQLQuery1.FieldByName
   (BDETable.FieldDefs[i].Name).Value :=
      BDETable.Fields[i].Value; }
      Values[i]:= BDETable.Fields[i].Value;
      ColNames[i]:= BDETable.FieldDefs[i].Name;
     // SqlInsert()
   end;//for
   SQLQuery1.SQL.Text:= SqlInsert([values],BDETable.TableName,ColNames);
   SQLQuery1.ExecSQL();
   BDETable.Next;
  end;//while
 finally
  BDETable.Close;
  SQLQuery1.Close;
 end;//try
 if SQLConnection1.TransactionsSupported then
    SQLConnection1.CommitFreeAndNil(Transaction);
 //ADOConnection1.CommitTrans;
// ADOConnection1.Close;
  SQLConnection1.Close;
end;

end.
