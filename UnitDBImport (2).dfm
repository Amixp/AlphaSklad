object FormDBImport: TFormDBImport
  Left = 374
  Top = 236
  Caption = #1048#1084#1087#1086#1088#1090' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' '#1080#1079' '#1076#1088#1091#1075#1086#1081' '#1087#1072#1087#1082#1080
  ClientHeight = 333
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
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
    Width = 59
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
  end
  object edDBPath1: TJvDirectoryEdit
    Left = 72
    Top = 20
    Width = 353
    Height = 21
    DialogKind = dkWin32
    DialogOptionsWin32 = [odOnlyDirectory, odStatusAvailable, odValidate]
    TabOrder = 0
    Text = ''
    OnChange = ListFoldersChange
  end
  object edDBPath2: TJvDirectoryEdit
    Left = 72
    Top = 56
    Width = 353
    Height = 21
    DialogKind = dkWin32
    TabOrder = 1
    Text = ''
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
    Left = 376
    Top = 267
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
  object DBImport: TDatabase
    DatabaseName = 'DBImport'
    DriverName = 'STANDARD'
    LoginPrompt = False
    Params.Strings = (
      'PATH='
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 164
    Top = 264
  end
  object BDETable: TTable
    Left = 224
    Top = 264
  end
  object ADOTable: TADOTable
    Connection = ADOConnection1
    Left = 284
    Top = 264
  end
  object ADOCommand: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 472
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
    AppStorage = FormOptions.JvAppIniFileStorage1
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
    Left = 468
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
    Left = 464
    Top = 8
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
    Left = 540
    Top = 56
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ClientDataSet1
    Left = 472
    Top = 136
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    Left = 576
    Top = 136
  end
end
