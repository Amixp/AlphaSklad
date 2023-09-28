object Data: TData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 867
  Top = 135
  Height = 473
  Width = 142
  object FormStorage1: TJvFormStorage
    AppStoragePath = '%FORM_NAME%'
    Options = []
    StoredProps.Strings = (
      'Db1.Params')
    StoredValues = <>
    Left = 72
    Top = 64
  end
  object Session1: TFDManager
    Active = True
    AutoSessionName = True

    Left = 16
    Top = 8
  end
  object Db1: TFDConnection
    ConnectionName = 'Sklad'
    DriverName = 'STANDARD'
    Params.Strings = (
      'PATH=C:\Db\Sklad'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')

    Left = 72
    Top = 8
  end
  object Sklad: TFDTable
    ObjectView = True
    AutoRefresh = True
    ConnectionName = 'Sklad'
    FilterOptions = [foNoPartialCompare]

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
  object LogIncoming: TFDTable
    AutoRefresh = True
    ConnectionName = 'Sklad'

    TableName = 'IncomingLog'
    TableType = ttParadox
    Left = 20
    Top = 108
  end
  object LogSale: TFDTable
    AutoRefresh = True
    ConnectionName = 'Sklad'

    TableName = 'SaleLog'
    TableType = ttParadox
    Left = 20
    Top = 160
  end
  object Periods: TFDTable
    AutoRefresh = True
    ConnectionName = 'Sklad'

    TableName = 'warehousing'
    TableType = ttParadox
    Left = 20
    Top = 216
  end
  object Packs: TFDTable
    ObjectView = True
    AutoRefresh = True
    ConnectionName = 'Sklad'

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
