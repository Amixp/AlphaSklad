object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 403
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 456
    Top = 353
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 0
    OnClick = btn1Click
  end
  object SkladtableBindSourceDB: TStringGrid
    Tag = 13
    Left = 0
    Top = 0
    Width = 973
    Height = 337
    Align = alTop
    ColCount = 13
    DrawingStyle = gdsGradient
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goThumbTracking, goFixedColClick]
    TabOrder = 1
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      87
      155)
  end
  object bndnvgtr1: TBindNavigator
    Left = 121
    Top = 352
    Width = 240
    Height = 25
    DataSource = bndsrcdb1
    Orientation = orHorizontal
    TabOrder = 2
  end
  object fconAskladConnection: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'MARS=yes'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 766
    Top = 347
  end
  object fdqrySkladTable: TFDQuery
    Connection = fconAskladConnection
    SQL.Strings = (
      'SELECT * FROM asklad_test.dbo.sklad')
    Left = 870
    Top = 347
  end
  object bndsrcdb1: TBindSourceDB
    DataSet = fdqrySkladTable
    ScopeMappings = <>
    Left = 656
    Top = 352
  end
  object bndngslst1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object lnkgrdtdtsrcBindSourceDB: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      GridControl = SkladtableBindSourceDB
      Columns = <
        item
          MemberName = 'NameProd'
        end
        item
          MemberName = 'Producer'
        end
        item
          MemberName = 'Transport'
        end
        item
          MemberName = 'Fridge'
        end
        item
          MemberName = 'Sklad'
        end
        item
          MemberName = 'Date'
        end
        item
          MemberName = 'Lot'
        end
        item
          MemberName = 'Packing'
        end
        item
          MemberName = 'Weight_place'
        end
        item
          MemberName = 'N_Items'
        end
        item
          MemberName = 'Net_weight'
        end
        item
          MemberName = 'Gross_weight'
        end
        item
          MemberName = 'Comment'
        end>
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 576
    Top = 344
  end
end
