object ChangePack: TChangePack
  Left = 661
  Top = 484
  ActiveControl = EdPack
  BorderStyle = bsDialog
  Caption = #1047#1072#1084#1077#1085#1072' '#1091#1087#1072#1082#1086#1074#1082#1080
  ClientHeight = 126
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  DesignSize = (
    280
    126)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 13
    Width = 144
    Height = 113
    Align = alLeft
    Caption = '    '#1047#1072#1084#1077#1085#1080#1090#1100' '#1091#1087#1072#1082#1086#1074#1082#1091' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitHeight = 16
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 19
    Height = 16
    Caption = #1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LbOldPack: TLabel
    Left = 144
    Top = 13
    Width = 17
    Height = 113
    Align = alLeft
    Caption = '??'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitHeight = 16
  end
  object Label3: TLabel
    Left = 161
    Top = 13
    Width = 119
    Height = 113
    Align = alClient
    Caption = ' '#1085#1072' '#1089#1082#1083#1072#1076#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 68
    ExplicitHeight = 16
  end
  object Label4: TLabel
    Left = 12
    Top = 72
    Width = 230
    Height = 13
    Caption = '('#1079#1072#1084#1077#1085#1072' '#1087#1088#1086#1080#1079#1086#1081#1076#1077#1090' '#1074#1086' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1103#1093' '#1089#1082#1083#1072#1076#1072')'
  end
  object EdPack: TEdit
    Left = 40
    Top = 39
    Width = 129
    Height = 21
    TabOrder = 0
    OnChange = EdPackChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 13
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
  end
  object BtnOk: TBitBtn
    Left = 112
    Top = 93
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = RzDialogButtons1ClickOk
  end
  object BtnCancel: TBitBtn
    Left = 196
    Top = 93
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
