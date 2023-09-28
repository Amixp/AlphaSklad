object FormOptions: TFormOptions
  Left = 0
  Top = 0
  Caption = 'FormOptions'
  ClientHeight = 388
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ChAutoLogin: TCheckBox
    Left = 40
    Top = 40
    Width = 177
    Height = 17
    Caption = 'Autologin in database'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 192
    Top = 355
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    Images = FormMainViewer.ImageList1
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 273
    Top = 355
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = FormMainViewer.JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredProps.Strings = (
      'ChAutoLogin.Checked')
    StoredValues = <
      item
        Name = 'Autologin'
        Value = False
      end>
    StoredValuesPath = 'options'
    Left = 208
    Top = 128
  end
end
