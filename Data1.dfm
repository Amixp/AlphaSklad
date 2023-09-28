object DataUnit: TDataUnit
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
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
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 256
    Top = 24
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
    CursorType = ctStatic
    TableName = 'Passports'
    Left = 160
    Top = 384
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 256
    Top = 168
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Fridge, Sklad, Periods, Charges FROM FridgesView WHERE Fr' +
        'idge="'#1044#1050#1061' 35"')
    Left = 48
    Top = 408
  end
  object cmd1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 328
    Top = 80
  end
  object Database1: TFDConnection
    Left = 48
    Top = 24
  end
end
