object FormPassports: TFormPassports
  Left = 337
  Top = 135
  BorderWidth = 8
  Caption = #1042#1099#1073#1086#1088' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 272
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 195
    Width = 671
    Height = 77
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 3
      Width = 52
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103':'
    end
    object Label2: TLabel
      Left = 156
      Top = 3
      Width = 25
      Height = 13
      Caption = #1048#1084#1103':'
    end
    object Label3: TLabel
      Left = 232
      Top = 3
      Width = 48
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085':'
    end
    object Label4: TLabel
      Left = 304
      Top = 3
      Width = 40
      Height = 13
      Caption = #1060#1080#1088#1084#1072':'
    end
    object Label5: TLabel
      Left = 372
      Top = 4
      Width = 66
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
    end
    object Panel2: TPanel
      Left = 511
      Top = 1
      Width = 159
      Height = 75
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 0
        Top = 12
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 84
        Top = 12
        Width = 75
        Height = 25
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
    object EdSurname: TEdit
      Left = 64
      Top = 16
      Width = 89
      Height = 21
      Color = 13041623
      TabOrder = 1
      OnChange = EdSurnameChange
    end
    object EdName: TEdit
      Left = 156
      Top = 16
      Width = 73
      Height = 21
      Color = 13041623
      TabOrder = 2
      OnChange = EdSurnameChange
    end
    object EdPhone: TEdit
      Left = 232
      Top = 16
      Width = 69
      Height = 21
      Color = 13041623
      TabOrder = 3
      OnChange = EdSurnameChange
    end
    object EdFirm: TEdit
      Left = 304
      Top = 16
      Width = 65
      Height = 21
      Color = 13041623
      TabOrder = 4
      OnChange = EdSurnameChange
    end
    object ChFilter: TCheckBox
      Left = 0
      Top = 16
      Width = 62
      Height = 17
      Caption = #1060#1080#1083#1100#1090#1088
      TabOrder = 5
      OnClick = EdSurnameChange
    end
    object EdComment: TEdit
      Left = 372
      Top = 16
      Width = 109
      Height = 21
      Color = 13041623
      TabOrder = 6
      OnChange = EdSurnameChange
    end
    object BtnAddClient: TBitBtn
      Left = 64
      Top = 48
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        F000FFFFF000FFFFF000FFFFF0A0FFFFF000FFFFF0A0FFFFF000FFFFF0A0FFFF
        F000F00000A00000F000F0AAAAAAAAA0F000F00000A00000F000FFFFF0A0FFFF
        F000FFFFF0A0FFFFF000FFFFF0A0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFF
        F000}
      TabOrder = 7
      OnClick = BtnAddClientClick
    end
    object BitBtn4: TBitBtn
      Left = 148
      Top = 48
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 8
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 232
      Top = 48
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        F000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
        F000F00000000000F000F0AAAAAAAAA0F000F00000000000F000FFFFFFFFFFFF
        F000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
        F000}
      TabOrder = 9
      OnClick = BtnDelClient
    end
  end
  object ListPassports: TJvDBUltimGrid
    Left = 0
    Top = 0
    Width = 671
    Height = 195
    Align = alClient
    DataSource = DataUnit.DSPassports
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = ListPassportsDblClick
    AutoSort = False
    IniStorage = FormPlacement1
    TitleArrow = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    ReadOnlyCellColor = clBtnShadow
  end
  object FormPlacement1: TJvFormStorage
    AppStorage = FormOptions.JvAppIniFileStorage1
    AppStoragePath = 'FormPassports\'
    StoredValues = <>
    Left = 204
    Top = 48
  end
end
