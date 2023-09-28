Unit UnitDBImport;

Interface

Uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,  Data.DBXCommon,
  DB,
  DBTables,

   Data.DBXPool, Datasnap.DBClient, Datasnap.Provider, Data.DbxSqlite,
  Data.FMTBcd, Data.SqlExpr, JvComponentBase, Data.Win.ADODB,
  Vcl.Mask, JvExMask, JvToolEdit,
  FileCtrl,  JvFormPlacement  ;

  type TDBParam =record
      DatabaseName,
      DataFileName : string;
      end;
Type
  TFormDBImport = class(TForm)
    DBImport: TDatabase;
    lbl1: TLabel;
    edDBPath1: TJvDirectoryEdit;
    lbl2: TLabel;
    edDBPath2: TJvDirectoryEdit;
    ListTables: TListBox;
    ListTables2: TListBox;
    BDETable: TTable;
    btnImport1: TButton;
    ADOTable: TADOTable;
    Memo1: TMemo;
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
    procedure ListFoldersChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImport1Click(Sender: TObject);
  private
    procedure BuildSQL;
  end;

Var
  FormDBImport: TFormDBImport;

Implementation

uses
  Data1;

{$R *.dfm}

{
******************************** TFormDBImport *********************************
}
procedure TFormDBImport.ListFoldersChange(Sender: TObject);
var
  S: string;
begin
  DBImport.Close;
  listtables.Items.Clear;
  s:=edDBPath1.Directory;
  DBImport.Params.Values['PATH'] := s;
  DBImport.Open;
 DBImport.GetTableNames(ListTables.Items);
end;

procedure TFormDBImport.FormCreate(Sender: TObject);
begin
   edDBPath2.Text:=DataUnit.Database1.Params.Values['PATH'];

  listtables2.Items.Clear;

 DataUnit.Database1.GetTableNames(ListTables2.Items);
end;

procedure TFormDBImport.BuildSQL;
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
BDETable.TableName:=edDBPath1.Text+'\' +ListTables2.Items[ListTables2.ItemIndex];
 BDETable.FieldDefs.Update;   

 s:='CREATE TABLE ' + ListTables2.Items[ListTables2.ItemIndex] + ' (';   
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

procedure TFormDBImport.btnImport1Click(Sender: TObject);
//������ 'Create Table and copy data'
var i:integer;   
   sqlCreateDBQuery, tblName:string;
    Transaction: TDBXTransaction  ;
  DBParam: tDBParam;
  DataFile: file;
  ch: ansichar;
begin
 tblName:=ListTables.Items[ListTables.ItemIndex];

//���������   
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
//�������� & �������� �������
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
    
//�������� ������
SQLQuery1.sql.Clear;
SQLQuery1.SQL.Add('SELECT * FROM ' + tblName);
 SQLConnection1.Open;
 BDETable.Open;
 //ADOTable.Open;
 SQLQuery1.Open;

 try  
  while not BDETable.Eof do begin
   SQLQuery1.Insert;
   for i:=0 to BDETable.Fields.Count-1 do begin
    SQLQuery1.FieldByName
   (BDETable.FieldDefs[i].Name).Value :=   
      BDETable.Fields[i].Value;   
   end;//for   
   SQLQuery1.Post;
   BDETable.Next
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

End.


