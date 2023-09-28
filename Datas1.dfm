object Datas: TDatas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 465
  Width = 289
  object DSPacks: TDataSource
    DataSet = FDPacks
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 272
  end
  object DSPeriods: TDataSource
    DataSet = FDPeriods
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 316
  end
  object DSNameProds: TDataSource
    DataSet = FDNameProds
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 8
  end
  object DSSklads: TDataSource
    DataSet = FDSklads
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 184
  end
  object DSProducers: TDataSource
    DataSet = FDProducers
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 52
  end
  object DSFridges: TDataSource
    DataSet = FDFridges
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 140
  end
  object DSTransports: TDataSource
    DataSet = FDTransports
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 96
  end
  object DSLots: TDataSource
    DataSet = FDLots
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 228
  end
  object DSWeight_places: TDataSource
    DataSet = FDWeight_places
    OnDataChange = DSPacksDataChange
    Left = 96
    Top = 372
  end
  object FDNameProds: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'NameProds'
    TableName = 'NameProds'
    Left = 160
  end
  object FDProducers: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Producers'
    TableName = 'Producers'
    Left = 160
    Top = 48
  end
  object FDTransports: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Transports'
    TableName = 'Transports'
    Left = 160
    Top = 96
  end
  object FDFridges: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Fridges'
    TableName = 'Fridges'
    Left = 160
    Top = 144
  end
  object FDSklads: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Sklads'
    TableName = 'Sklads'
    Left = 160
    Top = 192
  end
  object FDLots: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Lots'
    TableName = 'Lots'
    Left = 160
    Top = 248
  end
  object FDPacks: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Packs'
    TableName = 'Packs'
    Left = 160
    Top = 296
  end
  object FDPeriods: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Periods'
    TableName = 'Periods'
    Left = 160
    Top = 344
  end
  object FDWeight_places: TFDTable
    Connection = DataUnit.FDConn
    UpdateOptions.UpdateTableName = 'Weight_places'
    TableName = 'Weight_places'
    Left = 160
    Top = 392
  end
end
