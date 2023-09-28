object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 574
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 20
    Top = 24
    Width = 48
    Height = 13
    Caption = #1048#1089#1090#1086#1095#1085#1080#1082
  end
  object lbl2: TLabel
    Left = 8
    Top = 60
    Width = 61
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
  end
  object edDBPath1: TJvDirectoryEdit
    Left = 74
    Top = 21
    Width = 353
    Height = 21
    DialogKind = dkWin32
    DialogOptionsWin32 = [odOnlyDirectory, odStatusAvailable, odValidate]
    TabOrder = 0
    Text = 'd:\Docs\Dropbox\'#1055#1088#1086#1077#1082#1090#1099'\AlphaSklad22\Db'
    OnChange = edDBPath1Change
  end
  object edDBPath2: TJvDirectoryEdit
    Left = 72
    Top = 56
    Width = 353
    Height = 21
    DialogKind = dkWin32
    TabOrder = 1
    Text = ''
    OnChange = edDBPath2Change
  end
  object ListTables: TListBox
    Left = 20
    Top = 88
    Width = 198
    Height = 165
    ItemHeight = 13
    TabOrder = 2
  end
  object ListTables2: TListBox
    Left = 224
    Top = 88
    Width = 201
    Height = 165
    ItemHeight = 13
    TabOrder = 3
  end
  object btnImport1: TButton
    Left = 456
    Top = 39
    Width = 75
    Height = 25
    Caption = 'btnImport1'
    TabOrder = 4
    OnClick = btnImport1Click
  end
  object Memo1: TMemo
    Left = 440
    Top = 88
    Width = 233
    Height = 165
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 259
    Width = 679
    Height = 299
    DataSource = DataSource4
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 548
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
  object JvFilenameEdit1: TJvFilenameEdit
    Left = 75
    Top = 48
    Width = 350
    Height = 21
    DefaultExt = '*.mdb'
    Filter = 
      'All files (*.*)|*.*|Access DB 97-2000|*.mdb|Access DB 2007|*.acc' +
      'db'
    DialogOptions = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofCreatePrompt, ofEnableSizing]
    TabOrder = 8
    Text = 'd:\Docs\Dropbox\'#1055#1088#1086#1077#1082#1090#1099'\AlphaSklad22\Db2\accessdb.mdb'
    OnChange = edDBPath2Change
  end
  object DBImport: TDatabase
    AliasName = 'DBImport0'
    DatabaseName = 'DBImport'
    LoginPrompt = False
    Params.Strings = (
      'PATH=d:\Docs\Dropbox\'#1055#1088#1086#1077#1082#1090#1099'\AlphaSklad22\Db'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    SessionName = 'Session1_1'
    TransIsolation = tiDirtyRead
    Left = 44
    Top = 272
  end
  object BDETable: TTable
    SessionName = 'Session1_1'
    Left = 224
    Top = 264
  end
  object ADOTable: TADOTable
    Connection = ADOConnection1
    Left = 244
    Top = 396
  end
  object ADOCommand: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 452
    Top = 268
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\db\db1.mdb;Persi' +
      'st Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'MSDAORA'
    Left = 532
    Top = 268
  end
  object FormPlacement1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = 'FormImport\'
    StoredProps.Strings = (
      'edDBPath1.Text'
      'edDBPath2.Text')
    StoredValues = <>
    Left = 204
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = SQLQuery1
    Left = 592
    Top = 56
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'SQLITECONNECTION'
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxSqlite'
      
        'DriverPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver170.bp' +
        'l'
      
        'MetaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqlite' +
        'Driver170.bpl'
      'ColumnMetaDataSupported=True'
      'FailIfMissing=True'
      'DriverName=Sqlite'
      'Database=sklad1.db'
      'ConnectionString=DriverName=Sqlite,Database=sklad1.db'
      'DelegateConnection=DBXPool'
      'DBXPool.MaxConnections=20'
      'DBXPool.MinConnections=1'
      'DBXPool.ConnectTimeout=1000'
      'DBXPool.DriverUnit=Data.DBXPool'
      'DBXPool.DelegateDriver=True'
      'DBXPool.DriverName=DBXPool'
      
        'DBXPool.DriverPackageLoader=TDBXPoolDriverLoader,DBXCommonDriver' +
        '170.bpl'
      
        'DBXPool.DriverAssemblyLoader=Borland.Data.TDBXPoolDriverLoader,B' +
        'orland.Data.DbxCommonDriver,Version=17.0.0.0,Culture=neutral,Pub' +
        'licKeyToken=91d62ebb5b0d1b1b')
    Left = 448
  end
  object SQLDataSet1: TSQLDataSet
    DataSource = DataSource1
    Params = <>
    Left = 536
    Top = 8
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 592
    Top = 8
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 648
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = SQLQuery2
    Left = 652
    Top = 56
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ClientDataSet1
    Left = 360
    Top = 340
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 552
    Top = 128
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;Extend' +
      'ed Properties="DSN=1;DBQ=D:\DOCS\DROPBOX\'#1055#1056#1054#1045#1050#1058#1067'\ALPHASKLAD22\DB' +
      ';DefaultDir=D:\DOCS\DROPBOX\'#1055#1056#1054#1045#1050#1058#1067'\ALPHASKLAD22\DB;DriverId=538' +
      ';FIL=Paradox 5.X;MaxBufferSize=2048;PageTimeout=5;";Initial Cata' +
      'log=D:\DOCS\DROPBOX\'#1055#1056#1054#1045#1050#1058#1067'\ALPHASKLAD22\DB'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'MSDASQL.1'
    Left = 156
    Top = 388
  end
  object ADOCommand1: TADOCommand
    Parameters = <>
    Left = 64
    Top = 208
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection2
    TableName = #1047#1072#1076#1072#1095#1080
    Left = 156
    Top = 484
  end
  object DataSource3: TDataSource
    DataSet = ADOTable1
    Left = 136
    Top = 152
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'options.ini'
    DefaultSection = 'main'
    SubStorages = <>
    Left = 268
    Top = 104
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery1
    Left = 224
    Top = 312
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sklad')
    Left = 156
    Top = 436
  end
  object ADOConnection3: TADOConnection
    Left = 308
    Top = 480
  end
  object Session1: TSession
    Active = True
    AutoSessionName = True
    Left = 40
    Top = 320
  end
  object acsplctn1: TAccessApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 336
    Top = 288
  end
  object ExcelOLEObject1: TExcelOLEObject
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 40
    Top = 384
  end
end
