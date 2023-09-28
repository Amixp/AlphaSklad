object Data: TData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 473
  Width = 142
  object FormStorage1: TJvFormStorage
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredProps.Strings = (
      'Db1.Params')
    StoredValues = <>
    Left = 72
    Top = 64
  end
  object Session1: TSession
    AutoSessionName = True
    PrivateDir = 'C:\TEMP'
    Left = 16
    Top = 8
  end
  object Db1: TDatabase
    DatabaseName = 'Sklad'
    DriverName = 'STANDARD'
    Params.Strings = (
      'PATH=C:\Db\Sklad'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    SessionName = 'Session1_1'
    Left = 72
    Top = 8
  end
  object Sklad: TTable
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'Sklad'
    FilterOptions = [foNoPartialCompare]
    SessionName = 'Session1_1'
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
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'SkladIndex1'
        Fields = 
          'Nums;NameProd;Producer;Transport;Fridge;Sklad;Date;Lot;Packing;W' +
          'eight_place;N_Items;Net_weight;Gross_weight'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'sklad'
    TableType = ttParadox
    Left = 16
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.db'
    Filter = '*.db'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing, ofForceShowHidden]
    Left = 76
    Top = 120
  end
  object LogIncoming: TTable
    AutoRefresh = True
    DatabaseName = 'Sklad'
    SessionName = 'Session1_1'
    TableName = 'IncomingLog'
    TableType = ttParadox
    Left = 20
    Top = 108
  end
  object LogSale: TTable
    AutoRefresh = True
    DatabaseName = 'Sklad'
    SessionName = 'Session1_1'
    TableName = 'SaleLog'
    TableType = ttParadox
    Left = 20
    Top = 160
  end
  object Periods: TTable
    AutoRefresh = True
    DatabaseName = 'Sklad'
    SessionName = 'Session1_1'
    TableName = 'warehousing'
    TableType = ttParadox
    Left = 20
    Top = 216
  end
  object Packs: TTable
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'Sklad'
    SessionName = 'Session1_1'
    FieldDefs = <
      item
        Name = 'Pack'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Num'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'Packs'
    TableType = ttParadox
    Left = 20
    Top = 280
  end
end
