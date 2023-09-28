object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 410
  Width = 585
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=asklad'
      'User_Name=sa'
      'Password=Weronalika9'
      'Server=winsklad'
      'ApplicationName=AlphaSkladViewer'
      'LoginTimeout=5'
      'OSAuthent=No'
      'DriverID=MSSQL')
    LoginDialog = FDGUIxLoginDialog1
    LoginPrompt = False
    Transaction = FDTransaction1
    AfterConnect = FDConnectionAfterConnect
    AfterDisconnect = FDConnectionAfterDisconnect
    Left = 64
    Top = 32
  end
  object FDQ_Sklad: TFDQuery
    SQL.Strings = (
      'select * from sklad where n_items>0')
    Left = 144
    Top = 112
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection
    Left = 64
    Top = 112
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    HistoryEnabled = True
    Left = 64
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = FDQ_Sklad
    Left = 168
    Top = 192
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = FormMainViewer.JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredProps.Strings = (
      'FDConnection.Connected'
      'FDConnection.ConnectionName'
      'FDConnection.DriverName'
      'FDConnection.LoginDialog'
      'FDConnection.LoginPrompt'
      'FDConnection.TxOptions')
    StoredValues = <
      item
        Name = 'Autologin'
        Value = False
      end>
    StoredValuesPath = 'options'
    Left = 144
    Top = 48
  end
end
