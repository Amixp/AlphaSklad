object FormClearBase: TFormClearBase
  Left = 308
  Top = 281
  BorderStyle = bsDialog
  Caption = #1054#1090#1095#1080#1089#1090#1082#1072' '#1073#1072#1079#1099
  ClientHeight = 236
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 12
    Top = 8
    Width = 285
    Height = 29
    BevelInner = bvLowered
    TabOrder = 0
    object RxLabel1: TJvLabel
      Left = 10
      Top = 8
      Width = 265
      Height = 13
      Caption = #1042#1053#1048#1052#1040#1053#1048#1045'! '#1048#1079#1084#1077#1085#1077#1085#1080#1103' '#1073#1091#1076#1091#1090' '#1085#1077#1086#1073#1088#1072#1090#1080#1084#1099'!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 244
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object btn1: TButton
    Left = 22
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Sklad'
    TabOrder = 1
    OnClick = FlatSpeedButton1Click
  end
  object btn2: TButton
    Left = 120
    Top = 88
    Width = 75
    Height = 25
    Caption = 'LogIncoming'
    TabOrder = 2
    OnClick = FlatSpeedButton2Click
  end
  object btn3: TButton
    Left = 222
    Top = 88
    Width = 75
    Height = 25
    Caption = 'LogSale'
    TabOrder = 3
    OnClick = FlatSpeedButton3Click
  end
end
