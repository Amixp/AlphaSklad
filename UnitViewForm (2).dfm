object ViewForm: TViewForm
  Left = 410
  Top = 379
  BorderStyle = bsDialog
  Caption = #1054#1089#1084#1086#1090#1088' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
  ClientHeight = 314
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    653
    314)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnOk: TBitBtn
    Left = 565
    Top = 277
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = RzDialogButtons1ClickOk
  end
  object jListProds: TJvListView
    Left = 8
    Top = 8
    Width = 638
    Height = 258
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <>
    FlatScrollBars = True
    MultiSelect = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
    DotNetHighlighting = True
    ExtendedColumns = <>
  end
  object ListStr: TJvStrHolder
    Macros = <>
    Left = 132
    Top = 128
    InternalVer = 1
  end
  object Values: TJvStrHolder
    Macros = <>
    Left = 132
    Top = 172
    InternalVer = 1
  end
end
