object DataUnit: TDataUnit
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 511
  Width = 413
  object DSSklad: TDataSource
    DataSet = ADOsklad
    OnDataChange = DSSkladDataChange
    Left = 96
    Top = 64
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.db'
    Filter = '*.db'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing, ofForceShowHidden]
    Left = 72
    Top = 312
  end
  object DSLogIncoming: TDataSource
    DataSet = ADOIncomingLog
    Left = 92
    Top = 112
  end
  object DSLogSale: TDataSource
    DataSet = ADOSaleLog
    Left = 92
    Top = 160
  end
  object DSPassports: TDataSource
    DataSet = ADOPassports
    Left = 92
    Top = 208
  end
  object Database1: TDatabase
    Connected = True
    DatabaseName = 'AlphaSklad'
    DriverName = 'STANDARD'
    LoginPrompt = False
    Params.Strings = (
      'PATH=.\Db'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=TRUE')
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 92
    Top = 12
  end
  object FormStorage1: TJvFormStorage
    AppStorage = FormOptions.JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredProps.Strings = (
      'Database1.AliasName'
      'Database1.DatabaseName'
      'Database1.DriverName'
      'Database1.Params')
    StoredValues = <>
    Left = 28
    Top = 312
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=d:\Docs\Dropbox\'#1055#1088 +
      #1086#1077#1082#1090#1099'\AlphaSklad22\db2\accessdb.accdb;Persist Security Info=Fals' +
      'e'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 256
    Top = 16
  end
  object ADOCommand1: TADOCommand
    CommandType = cmdTable
    Connection = ADOConnection1
    Parameters = <>
    Left = 256
    Top = 72
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 256
    Top = 120
  end
  object ADOsklad: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sklad'
    Left = 160
    Top = 240
  end
  object ADOIncomingLog: TADOTable
    Connection = ADOConnection1
    TableName = 'IncomingLog'
    Left = 160
    Top = 288
  end
  object ADOSaleLog: TADOTable
    Connection = ADOConnection1
    TableName = 'SaleLog'
    Left = 160
    Top = 336
  end
  object ADOPassports: TADOTable
    Connection = ADOConnection1
    TableName = 'Passports'
    Left = 160
    Top = 384
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 256
    Top = 168
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 48
    Top = 408
  end
end
