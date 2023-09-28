object AddFormPeriod: TAddFormPeriod
  Left = 541
  Top = 322
  ActiveControl = EdPeriod
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 174
  ClientWidth = 281
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
    281
    174)
  PixelsPerInch = 96
  TextHeight = 13
  object EdL1: TLabel
    Left = 70
    Top = 28
    Width = 41
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076':'
  end
  object Label1: TLabel
    Left = 45
    Top = 64
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = #1047#1072' '#1093#1088#1072#1085#1077#1085#1080#1077':'
  end
  object Label2: TLabel
    Left = 81
    Top = 100
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = #1052#1077#1088#1072':'
  end
  object Label3: TLabel
    Left = 244
    Top = 28
    Width = 24
    Height = 13
    Caption = #1076#1085#1077#1081
  end
  object Label4: TLabel
    Left = 204
    Top = 64
    Width = 20
    Height = 13
    Caption = #1088#1091#1073'.'
  end
  object EdPeriod: TEdit
    Left = 120
    Top = 26
    Width = 121
    Height = 21
    Color = 6618468
    TabOrder = 0
    OnChange = EdChargeChange
  end
  object EdCharge: TEdit
    Left = 120
    Top = 62
    Width = 77
    Height = 21
    Color = 14155751
    TabOrder = 1
    OnChange = EdChargeChange
  end
  object EdMass: TEdit
    Left = 120
    Top = 98
    Width = 61
    Height = 21
    Color = 14808290
    Enabled = False
    ReadOnly = True
    TabOrder = 2
    Text = #1090#1086#1085#1085
  end
  object BtnOk: TBitBtn
    Left = 108
    Top = 140
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
  end
  object BtnCancel: TBitBtn
    Left = 192
    Top = 140
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
  end
end
