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
  object Session1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Left = 16
    Top = 8
  end
  object Db1: TFDConnection
    ConnectionName = 'Sklad'
    Params.Strings = (
      'PATH=C:\Db\Sklad'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    Left = 72
    Top = 8
  end
  object Sklad: TFDTable
    FilterOptions = [foNoPartialCompare]
    ConnectionName = 'Sklad'
    UpdateOptions.UpdateTableName = 'sklad'
    TableName = 'sklad'
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
    ConnectionName = 'Sklad'
    UpdateOptions.UpdateTableName = 'IncomingLog'
    TableName = 'IncomingLog'
    Left = 20
    Top = 108
  end
  object LogSale: TFDTable
    ConnectionName = 'Sklad'
    UpdateOptions.UpdateTableName = 'SaleLog'
    TableName = 'SaleLog'
    Left = 20
    Top = 160
  end
  object Periods: TFDTable
    ConnectionName = 'Sklad'
    UpdateOptions.UpdateTableName = 'warehousing'
    TableName = 'warehousing'
    Left = 20
    Top = 216
  end
  object Packs: TFDTable
    ConnectionName = 'Sklad'
    UpdateOptions.UpdateTableName = 'Packs'
    TableName = 'Packs'
    Left = 20
    Top = 280
  end
end
