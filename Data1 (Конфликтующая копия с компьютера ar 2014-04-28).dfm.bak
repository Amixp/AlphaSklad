object DataUnit: TDataUnit
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 422
  Width = 187
  object Sklad: TTable
    ObjectView = True
    AfterOpen = SkladAfterOpen
    AfterClose = SkladAfterClose
    AfterPost = SkladAfterOpen
    AfterDelete = SkladAfterOpen
    AfterRefresh = SkladAfterOpen
    AutoRefresh = True
    DatabaseName = 'AlphaSklad'
    FilterOptions = [foCaseInsensitive]
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'NameProd'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Producer'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Transport'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fridge'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Sklad'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Date'
        DataType = ftDate
      end
      item
        Name = 'Lot'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Packing'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Weight_place'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'N_Items'
        DataType = ftFloat
      end
      item
        Name = 'Net_weight'
        DataType = ftFloat
      end
      item
        Name = 'Gross_weight'
        DataType = ftFloat
      end
      item
        Name = 'Comment'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Color'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'SkladIndex1'
        Fields = 
          'NameProd;Producer;Transport;Fridge;Sklad;Date;Lot;Packing;Weight' +
          '_place;N_Items;Net_weight;Gross_weight'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'NameProd;Producer;Transport;Fridge;Sklad'
    StoreDefs = True
    TableName = 'sklad.DB'
    Left = 20
    Top = 64
  end
  object DSSklad: TDataSource
    DataSet = Sklad
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
  object LogIncoming: TTable
    ObjectView = True
    AfterOpen = LogIncomingAfterOpen
    AfterClose = LogIncomingAfterClose
    AfterPost = LogIncomingAfterOpen
    AfterDelete = LogIncomingAfterOpen
    AfterRefresh = LogIncomingAfterOpen
    AutoRefresh = True
    DatabaseName = 'AlphaSklad'
    FilterOptions = [foCaseInsensitive]
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'DateTime'
        DataType = ftDateTime
      end
      item
        Name = 'NameProd'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Producer'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Transport'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fridge'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Sklad'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Date'
        DataType = ftDate
      end
      item
        Name = 'Lot'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Weight_place'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'N_Items'
        DataType = ftFloat
      end
      item
        Name = 'Net_weight'
        DataType = ftFloat
      end
      item
        Name = 'Gross_weight'
        DataType = ftFloat
      end
      item
        Name = 'Comment'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Color'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'LogIncomingIndex1'
        Fields = 'Id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'Id'
    StoreDefs = True
    TableName = 'IncomingLog'
    TableType = ttParadox
    Left = 20
    Top = 112
  end
  object DSLogIncoming: TDataSource
    DataSet = LogIncoming
    Left = 92
    Top = 112
  end
  object DSLogSale: TDataSource
    DataSet = LogSale
    Left = 92
    Top = 160
  end
  object LogSale: TTable
    ObjectView = True
    AfterOpen = LogSaleAfterOpen
    AfterClose = LogSaleAfterClose
    AfterPost = LogSaleAfterOpen
    AfterDelete = LogSaleAfterOpen
    AfterRefresh = LogSaleAfterOpen
    AutoRefresh = True
    DatabaseName = 'AlphaSklad'
    FilterOptions = [foCaseInsensitive]
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'DateTime'
        DataType = ftDateTime
      end
      item
        Name = 'NameProd'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Producer'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Transport'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fridge'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Sklad'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Date'
        DataType = ftDateTime
      end
      item
        Name = 'Lot'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Weight_place'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'N_Items'
        DataType = ftFloat
      end
      item
        Name = 'Net_weight'
        DataType = ftFloat
      end
      item
        Name = 'Gross_weight'
        DataType = ftFloat
      end
      item
        Name = 'Storage_fee'
        DataType = ftFloat
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'NumLetter'
        DataType = ftInteger
      end
      item
        Name = 'Color'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'LogSaleIndex1'
        Fields = 'Id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'Id'
    StoreDefs = True
    TableName = 'SaleLog'
    TableType = ttParadox
    Left = 20
    Top = 160
  end
  object Passports: TTable
    ObjectView = True
    AfterClose = PassportsAfterClose
    AutoRefresh = True
    DatabaseName = 'AlphaSklad'
    FilterOptions = [foCaseInsensitive]
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = #1060#1072#1084#1080#1083#1080#1103
        DataType = ftString
        Size = 50
      end
      item
        Name = #1048#1084#1103
        DataType = ftString
        Size = 50
      end
      item
        Name = #1054#1090#1095#1077#1089#1090#1074#1086
        DataType = ftString
        Size = 50
      end
      item
        Name = #1057#1077#1088#1080#1103
        DataType = ftString
        Size = 10
      end
      item
        Name = #1053#1086#1084#1077#1088
        DataType = ftString
        Size = 10
      end
      item
        Name = #1050#1077#1084' '#1074#1099#1076#1072#1085
        DataType = ftString
        Size = 100
      end
      item
        Name = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataType = ftDate
      end
      item
        Name = #1060#1080#1088#1084#1072
        DataType = ftString
        Size = 50
      end
      item
        Name = #1040#1076#1088#1077#1089
        DataType = ftString
        Size = 100
      end
      item
        Name = #1058#1077#1083#1077#1092#1086#1085
        DataType = ftString
        Size = 50
      end
      item
        Name = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Color'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PassportsIndex1'
        Fields = 'Id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'Id'
    StoreDefs = True
    TableName = 'Passports.db'
    Left = 20
    Top = 208
  end
  object DSPassports: TDataSource
    DataSet = Passports
    Left = 92
    Top = 208
  end
  object Commands: TTable
    AutoRefresh = True
    DatabaseName = 'AlphaSklad'
    SessionName = 'Default'
    Exclusive = True
    TableType = ttParadox
    Left = 12
    Top = 260
  end
  object DSCommands: TDataSource
    DataSet = Commands
    Left = 92
    Top = 260
  end
  object RxQuery1: TQuery
    AutoRefresh = True
    DatabaseName = '.\DB'
    SessionName = 'Default'
    RequestLive = True
    UniDirectional = True
    Left = 20
    Top = 12
  end
  object Database1: TDatabase
    DatabaseName = 'AlphaSklad'
    DriverName = 'STANDARD'
    LoginPrompt = False
    Params.Strings = (
      'PATH=.\Db'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
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
end
