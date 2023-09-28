object AddPack: TAddPack
  Left = 592
  Top = 332
  ActiveControl = Edit1
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1091#1087#1072#1082#1086#1074#1082#1080
  ClientHeight = 124
  ClientWidth = 232
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
    232
    124)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 20
    Width = 72
    Height = 13
    Caption = #1056#1086#1076' '#1091#1087#1072#1082#1086#1074#1082#1080':'
  end
  object Label2: TLabel
    Left = 28
    Top = 52
    Width = 73
    Height = 13
    Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090':'
  end
  object Edit1: TEdit
    Left = 112
    Top = 16
    Width = 85
    Height = 21
    TabOrder = 0
  end
  object EdNum: TEdit
    Left = 112
    Top = 48
    Width = 85
    Height = 21
    TabOrder = 1
  end
  object BtnOk: TBitBtn
    Left = 60
    Top = 87
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object BtnCancel: TBitBtn
    Left = 145
    Top = 87
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
