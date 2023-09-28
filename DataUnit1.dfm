object DataUnit: TDataUnit
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 511
  Width = 687
  object DSSklad: TDataSource
    DataSet = FDSklad
    OnDataChange = DSSkladDataChange
    Left = 24
    Top = 24
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.db'
    Filter = '*.db'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing, ofForceShowHidden]
    Left = 24
    Top = 256
  end
  object DSLogIncoming: TDataSource
    DataSet = FDIncomingLog
    Left = 28
    Top = 72
  end
  object DSLogSale: TDataSource
    DataSet = FDSaleLog
    Left = 28
    Top = 120
  end
  object DSPassports: TDataSource
    DataSet = FDPassports
    Left = 28
    Top = 168
  end
  object FormStorage1: TJvFormStorage
    AppStorage = MainForm.JvAppIniFileStorage1
    AppStoragePath = 'DataUnit\'
    Options = []
    StoredProps.Strings = (
      'ADOConnection1_.ConnectionString'
      'ADOCommand1_.Parameters')
    StoredValues = <>
    Left = 20
    Top = 304
  end
  object ADOConnection1_: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=asklad;Data Source=192.168.' +
      '0.2;Initial File Name="";Server SPN=SERVER\root;'
    DefaultDatabase = 'asklad'
    IsolationLevel = ilReadCommitted
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLNCLI11.1'
    OnConnectComplete = ADOConnection1_ConnectComplete
    OnWillConnect = ADOConnection1_WillConnect
    OnExecuteComplete = dbConnectionExecuteComplete
    OnWillExecute = dbConnectionWillExecute
    Left = 592
    Top = 32
  end
  object ADOCommand1_: TADOCommand
    CommandType = cmdTable
    Connection = ADOConnection1_
    Parameters = <>
    Left = 592
    Top = 80
  end
  object ADODataSet1_: TADODataSet
    Connection = ADOConnection1_
    Parameters = <>
    Left = 592
    Top = 128
  end
  object ADOsklad0: TADOTable
    Connection = ADOConnection1_
    CursorType = ctStatic
    TableName = 'sklad'
    Left = 592
    Top = 280
  end
  object ADOIncomingLog1: TADOTable
    Connection = ADOConnection1_
    TableName = 'IncomingLog'
    Left = 592
    Top = 328
  end
  object ADOSaleLog1: TADOTable
    Connection = ADOConnection1_
    TableName = 'SaleLog'
    Left = 592
    Top = 376
  end
  object ADOPassports1: TADOTable
    Connection = ADOConnection1_
    CursorType = ctStatic
    TableName = 'Passports'
    Left = 592
    Top = 424
  end
  object ADOQuery1_: TADOQuery
    Connection = ADOConnection1_
    Parameters = <>
    Left = 592
    Top = 176
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1_
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Fridge, Sklad, Periods, Charges FROM FridgesView WHERE Fr' +
        'idge="'#1044#1050#1061' 35"')
    Left = 504
    Top = 40
  end
  object cmd1_: TADOCommand
    Connection = ADOConnection1_
    Parameters = <>
    Left = 592
    Top = 224
  end
  object QSklad11: TADOQuery
    Connection = ADOConnection1_
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, NameProd, Producer, Transport, Fridge, Sklad, Date, L' +
        'ot, Packing, Weight_place, N_Items, Net_weight, Gross_weight, Co' +
        'mment, Color'
      'FROM  sklad where n_items>0'
      'ORDER BY NameProd, Producer, Transport, Fridge, Sklad')
    Left = 496
    Top = 296
  end
  object ADOIncomingLog11: TADOQuery
    Connection = ADOConnection1_
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM [asklad].[dbo].[IncomingLog]'
      '  order by [Datetime]')
    Left = 496
    Top = 344
  end
  object ADOSaleLog11: TADOQuery
    Connection = ADOConnection1_
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'SELECT  [Id]'
      '      ,[DateTime]'
      '      ,[NameProd]'
      '      ,[Producer]'
      '      ,[Transport]'
      '      ,[Fridge]'
      '      ,[Sklad]'
      '      ,[Date]'
      '      ,[Lot]'
      '      ,[Weight_place]'
      '      ,[N_Items]'
      '      ,[Net_weight]'
      '      ,[Gross_weight]'
      '      ,[Storage_fee]'
      '      ,[Name]'
      '      ,[NumLetter]'
      '      ,[Color]'
      '  FROM [SaleLog]'
      '  order by [Datetime]')
    Left = 496
    Top = 384
  end
  object ADOPassports11: TADOQuery
    Connection = ADOConnection1_
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  Passports'
      'ORDER BY ['#1060#1072#1084#1080#1083#1080#1103']'
      '')
    Left = 496
    Top = 432
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'Password=Weronalika9'
      'Database=asklad'
      'User_Name=root'
      'LoginTimeout=1'
      'ReadTimeout=5'
      'WriteTimeout=5'
      'DriverID=MSSQL')
    ResourceOptions.AssignedValues = [rvCmdExecTimeout, rvServerOutput, rvBackup, rvAutoReconnect]
    ResourceOptions.CmdExecTimeout = 3000
    ResourceOptions.Backup = True
    ResourceOptions.ServerOutput = True
    ResourceOptions.AutoReconnect = True
    TxOptions.Isolation = xiSerializible
    LoginDialog = FDGUIxLoginDialog1
    LoginPrompt = False
    Transaction = FDTransaction1
    OnError = FDConnError
    OnRecover = FDConnRecover
    Left = 184
    Top = 32
  end
  object fdmtbl1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 96
    Top = 256
  end
  object FDQueryCmd: TFDQuery
    Connection = FDConn
    Left = 96
    Top = 304
  end
  object fdtbl1: TFDTable
    Connection = FDConn
    Left = 496
    Top = 168
  end
  object fdmngr1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 96
    Top = 360
  end
  object FDCommand: TFDCommand
    Connection = FDConn
    Transaction = FDTransaction1
    Left = 184
    Top = 88
  end
  object FDSklad: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      
        'SELECT ID, NameProd, Producer, Transport, Fridge, Sklad, Date, L' +
        'ot, Packing, Weight_place, N_Items, Net_weight, Gross_weight, Co' +
        'mment, Color'
      'FROM  sklad where n_items>0'
      'ORDER BY NameProd, Producer, Transport, Fridge, Sklad')
    Left = 96
    Top = 24
  end
  object FDIncomingLog: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT *'
      '  FROM [IncomingLog]'
      '  order by [Datetime]')
    Left = 96
    Top = 72
  end
  object FDSaleLog: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      ''
      'SELECT  [Id]'
      '      ,[DateTime]'
      '      ,[NameProd]'
      '      ,[Producer]'
      '      ,[Transport]'
      '      ,[Fridge]'
      '      ,[Sklad]'
      '      ,[Date]'
      '      ,[Lot]'
      '      ,[Weight_place]'
      '      ,[N_Items]'
      '      ,[Net_weight]'
      '      ,[Gross_weight]'
      '      ,[Storage_fee]'
      '      ,[Name]'
      '      ,[NumLetter]'
      '      ,[Color]'
      '  FROM [SaleLog]'
      '  order by [Datetime]')
    Left = 96
    Top = 120
  end
  object FDPassports: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM  Passports'
      'ORDER BY ['#1060#1072#1084#1080#1083#1080#1103']'
      ''
      '')
    Left = 96
    Top = 168
  end
  object FDQuery5: TFDQuery
    Connection = FDConn
    Left = 320
    Top = 96
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 184
    Top = 144
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiSerializible
    Connection = FDConn
    Left = 184
    Top = 192
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    HistoryEnabled = True
    LoginRetries = 1
    Left = 184
    Top = 256
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 192
    Top = 312
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorHome = 'C:\Program Files\MySQL\MySQL Server 8.0'
    VendorLib = 'libmysql.dll'
    Left = 312
    Top = 248
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 312
    Top = 304
  end
end
