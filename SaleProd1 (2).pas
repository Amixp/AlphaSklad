Unit SaleProd1;

Interface

Uses Forms,
  Dialogs,
  Graphics,
  ComObj,
  DB,
  Variants,     data.Win.ADODB,
  SysUtils,
  DateUtils,
  dbtables,
  StdCtrls,
  Buttons,
  ComCtrls,
  Controls,
  ExtCtrls,
  Classes,
  DBCtrls,  windows,

  Spin, JvStringHolder, JvExControls, JvComponent, JvLabel, JvDBLookup,
  Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvCombobox, JvSpin, JvEdit, UnitService,
  OleServer, WordXP, ExcelXP, JvDBLookupTreeView;
Type
  TSaleProd = class(TForm)
    Back: TBitBtn;
    Bevel1: TBevel;
    Bevel4: TBevel;
    BtnCancel: TBitBtn;
    Button1: TButton;
    EdComment: TEdit;
    EdDate: TDateTimePicker;
    EdFridge: TJvComboBox;
    EdGross_weight: TEdit;
    EdLot: TJvComboBox;
    EdNameProd: TJvComboBox;
    EdNet_Weight: TEdit;
    EdNumAuthority: TSpinEdit;
    EdNumLetter: TSpinEdit;
    EdN_Items: TJvSpinEdit;
    EdPacking: TJvComboBox;
    EdProducer: TJvComboBox;
    EdSklad: TJvComboBox;
    EdStorage_Date: TDateTimePicker;
    EdTransport: TJvComboBox;
    EdWeight_place: TJvComboBox;
    XL: TExcelApplication;
    Index: TStaticText;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LbAllItems: TLabel;
    LbChar: TStaticText;
    LbDay: TStaticText;
    LbFridge: TLabel;
    LbPer: TStaticText;
    LbSumItems: TLabel;
    LbSumNet_Weight: TLabel;
    LbTotal: TStaticText;
    ListStr0: TjvStrHolder;
    Next: TBitBtn;
    Pages: TPageControl;
    SelNum: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    TabSheet1: TTabSheet;
    Values0: TjvStrHolder;
    WordApp: TWordApplication;
    TabSheet2: TTabSheet;
    Label18: TLabel;
    BtnPrintLetter: TBitBtn;
    BtnPrintDoverka: TBitBtn;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    Button2: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    procedure BackClick(Sender: TObject);
    procedure OnSelectPassport(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnDone;
    procedure BtnNext;
    procedure Button1Click(Sender: TObject);
    procedure EdDateChange(Sender: TObject);
    procedure EdGross_weightChange(Sender: TObject);
    procedure EdNet_WeightChange(Sender: TObject);
    procedure EdNumAuthorityChange(Sender: TObject);
    procedure EdNumLetterChange(Sender: TObject);
    procedure EdN_ItemsChange(Sender: TObject);
    procedure EdPackingChange(Sender: TObject);
    procedure EdStorage_DateChange(Sender: TObject);
    procedure EdWeight_placeChange(Sender: TObject);
    procedure ExportToWord;
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Mul_NetW;
    procedure NextClick(Sender: TObject);
    procedure PackChange;
    procedure Print_to_WordClick(Sender: TObject);
    procedure ReadToVars;
    procedure ReadValues;
    procedure Summ_ItemsNet;
  private
    function GetNameByKey(KeyField, key, field2: string;
      tbl: TADOTable): string;
    procedure ExportToWord2;
  public
   Kf: Extended;
  //SaleEdit: TSaleProdEdit;
  MaxNums: Array Of real;
  NItems: Array[1..1024] Of Extended;
  NetWeight: Array[1..1024] Of Extended;
  GrossWeight: Array[1..1024] Of Extended;
  Storage_Dates: Array[1..1024] Of TDateTime;
  Storage_fee: Array[1..1024] Of Currency;
  NumLetters: integer;
  NumAuthoritys: integer;
   function currency2Str(value: double): string;
  end;

Var
  SaleProd: TSaleProd;
TypeSaleProd: integer;
  const
  lcid = LOCALE_USER_DEFAULT;
Implementation

Uses UnitSklad1,
  Data1,
  FormOptions1,
  IncomingUnit,
  Progressform1,
  Datas1,
  SavedFormUnit,
  FormPassportsUnit, JvDBGrid;

{$R *.dfm}

{
********************************** TSaleProd ***********************************
}
procedure TSaleProd.BackClick(Sender: TObject);
begin
  Dec(idx);
  If idx = 1 Then
    Back.Enabled := False;
  Index.Caption := IntToStr(idx);
  If idx <> c Then
    BtnNext;
  ReadValues;
end;

procedure TSaleProd.OnSelectPassport(Sender: TObject);
begin
  FormPassports := TFormPassports.Create(self);
  FormPassports.ShowModal;
  FormPassports.Free;
  BtnPrintLetter.Enabled:=true;
  BtnPrintDoverka.Enabled:=true;
end;  { DONE : �������� ������ ������ ����� ������ ������� }
                                                            { TODO : �������� ����������� ���������� ������� }
procedure TSaleProd.BitBtn2Click(Sender: TObject);
begin
  Pages.SelectNextPage(true, false);
end;

procedure TSaleProd.BtnDone;
begin
  Next.Font.Style := [fsBold];
  Next.Font.Size := 8;
  Next.Caption := '������';
  Next.Enabled := (EdN_Items.Value <> 0);
end;

procedure TSaleProd.BtnNext;
begin
  Next.Font.Style := [];
  Next.Font.Size := 8;
  Next.Caption := '������';
  Next.Enabled := (EdN_Items.Value <> 0);
end;

procedure TSaleProd.Button1Click(Sender: TObject);
begin
  FormOptions.PageControl1.ActivePageIndex := 2;
  FormOptions.FridgeList.DataSource.DataSet.Locate('Fridge', EdFridge.Text, [loCaseInsensitive]);
  FormOptions.ShowModal;
  FormOptions.PageControl1.ActivePageIndex := 0;
  ReadValues;
end;

function TSaleProd.currency2Str(value: double): string;

  Const
    hundreds: Array[0..9] Of String = ('', ' ���', ' ������', ' ������', ' ���������', ' �������', ' ��������', ' �������', ' ���������', ' ���������');

    tens: Array[0..9] Of String = ('', '', ' ��������', ' ��������', ' �����', ' ���������', ' ����������', ' ���������', ' �����������', ' ���������');
    ones: Array[0..19] Of String = ('', '', '', ' ���', ' ������', ' ����', ' �����', ' ����', ' ������', ' ������', ' ������', ' �����������', ' ����������', ' ����������', ' ������������', ' ����������', ' �����������', ' ����������', ' ������������', ' ������������');
    razryad: Array[0..6] Of String = ('', ' �����', ' �������', ' ��������', ' ��������', ' �����������', ' �����������');

  Var
    s: String;
    i: integer;
    val: int64;

    Function shortNum(s: String; raz: integer): String;
    Begin
      Result := hundreds[StrToInt(s[1])];
      If StrToInt(s) = 0 Then
        Exit;
      If s[2] <> '1' Then
      Begin
        Result := Result + tens[StrToInt(s[2])];
        Case StrToInt(s[3]) Of
          1:
            If raz = 1 Then
              Result := Result + ' ����'
            Else
              Result := Result + ' ����';
          2:
            If raz = 1 Then
              Result := Result + ' ���'
            Else
              Result := Result + ' ���';
        Else
          Result := Result + ones[StrToInt(s[3])];
        End;
        Result := Result + razryad[raz];
        Case StrToInt(s[3]) Of
          0, 5, 6, 7, 8, 9:
            If raz > 1 Then
              Result := Result + '��';
          1:
            If raz = 1 Then
              Result := Result + '�';
          2, 3, 4:
            If raz = 1 Then
              Result := Result + '�'
            Else
              If raz > 1 Then
                Result := Result + '�';
        End;
      End
      Else
      Begin
        Result := Result + ones[StrToInt(Copy(s, 2, 2))];
        Result := Result + razryad[raz];
        If raz > 1 Then
          Result := Result + '��';
      End;
    End;

begin

  val := Trunc(value);
  If val = 0 Then
  Begin Result := '����';
    Exit;
  End;
  s := IntToStr(val);
  Result := '';
  i := 0;
  While Length(s) > 0 Do
  Begin
    Result := shortNum(Copy('00' + s, Length('00' + s) - 2, 3), i) + Result;
    If Length(s) > 3 Then
      s := Copy(s, 1, Length(s) - 3)
    Else
      s := '';
    inc(i);
  End;
  //s:=IntToStr(Trunc((value-val)*100+0.5));
  //Result:=Result+' ���. '+s+' ���.';
end;

procedure TSaleProd.EdDateChange(Sender: TObject);
begin
  EdStorage_Date.MinDate := EdDate.Date;
end;

procedure TSaleProd.EdGross_weightChange(Sender: TObject);
begin
   TryStrToFloat(EdGross_weight.Text,Grossweight[idx])
end;

procedure TSaleProd.EdNet_WeightChange(Sender: TObject);
begin
  if TryStrToFloat(EdNet_Weight.Text,NetWeight[idx]) then
   begin
//    ReadToVars;
    Mul_NetW;
    Summ_ItemsNet;
    end;
end;

procedure TSaleProd.EdNumAuthorityChange(Sender: TObject);
begin
  // NumLetter:=FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value;;
  FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value := EdNumAuthority.Value;

end;

procedure TSaleProd.EdNumLetterChange(Sender: TObject);
begin
  FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value := EdNumLetter.Value;
  //NumAuthority:=FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value;;

end;

procedure TSaleProd.EdN_ItemsChange(Sender: TObject);
begin
  If EdN_Items.Text <> '' Then
  Begin
    NItems[idx] := EDN_Items.Value;
    PackChange;
    ReadValues;
    Mul_NetW;
  End;
  If EdN_Items.Value > EdN_Items.MaxValue Then
    EdN_Items.Font.Color := clRed
  Else
    EdN_Items.Font.Color := clWindowText;
  Next.Enabled := ((EdN_Items.Value <> 0) And (EdN_Items.Value <= EdN_Items.MaxValue));
  Summ_ItemsNet;
end;

procedure TSaleProd.EdPackingChange(Sender: TObject);
begin
  PackChange;
end;

procedure TSaleProd.EdStorage_DateChange(Sender: TObject);
begin
  Storage_Dates[idx] := EdStorage_Date.Date;
  ReadValues;

end;

procedure TSaleProd.EdWeight_placeChange(Sender: TObject);
var
  s: string;
begin
  s := EdWeight_place.Text;
  If Pos('.', s) > 0 Then
  Begin
    If FormatSettings.DecimalSeparator <> '.' Then
      s[Pos('.', s)] := FormatSettings.DecimalSeparator;
  End
  Else
    If Pos(',', s) > 0 Then
      If FormatSettings.DecimalSeparator <> ',' Then
        s[Pos(',', s)] := FormatSettings.DecimalSeparator;
  EdWeight_place.Text := s;
end;

procedure TSaleProd.ExportToWord;
var
 BookName, NNum, SMon, Sday, SYear, Text, FileNameLetter: string;
  Year, Month, Day: Word;
 // FWordApp,
 WordDoc: WordDocument;
 //XL: Variant;
  SumNItems, SumNetWeight, SumGrossWeight: Extended;
  i, StartN: Integer;
  Now_Date: TDateTime;
begin
  Try
   /// FWordApp:= 0; // �� ������ ���������������� ����������
 //  If WordApp. = 0 Then
  //
      SumNItems := 0;
      SumNetWeight := 0;
      SumGrossWeight := 0;
      //�������� ��� ��� �������
      L_Name := Trim(DataUnit.ADOPassports.FieldByName('�������').AsString + ' ' +
        DataUnit.ADOPassports.FieldByName('���').AsString + ' ' + DataUnit.ADOPassports.FieldByName('��������').AsString);
      //****
      ProgressForm := TProgressForm.Create(Application);
      ProgressForm.Label1.Caption := '������� ��������� ��������� � Word';
      ProgressForm.Show;
      ProgressForm.Update;
      ProgressForm.PrBar.Position := 0;
      ProgressForm.PrBar.Maximum := 11 * c;
      ProgressForm.PrBar.Minimum := 0;
      Case TypeSaleProd Of { }
        1: FileNameLetter := LetterForm;
        2: FileNameLetter := LetterForm_Dov;
      End; { case }
   ////   WordApp:= createOleObject('Word.Application') as WordApplication; //Basic
      {  if Assigned(FWordApp) then
  begin
    FWordApp.Visible := False;
  end
  else
    raise Exception.Create('Cannot initialize Word application');
end;     }
      Text := ExtractFilePath(Application.ExeName); //+'\������.doc';
      if not DirectoryExists(text) then MkDir(text);

      WordApp.ChangeFileOpenDirectory(Text);
       while WordApp.Templates.Count = 0 do
  Sleep(200);
     WordDoc:=WordApp.Documents.Open(Text + FileNameLetter,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,false,EmptyParam,EmptyParam,EmptyParam);

     i := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value;
       BookName:='Num';
       if WordDoc.Bookmarks.Exists(BookName) then
        WordDoc.Bookmarks.Item(BookName).Range.Text :=  IntToStr(i);
      Now_Date := Date;
      DecodeDate(Now_Date, year, Month, day);

      BookName:='Day';
       if WordDoc.Bookmarks.Exists(BookName) then
        WordDoc.Bookmarks.Item(BookName).Range.Text :=  IntToStr(Day);

      DateTimeToString(SMon, 'mmmm', Now_Date);
      BookName:='Month';
       if WordDoc.Bookmarks.Exists(BookName) then
        WordDoc.Bookmarks.Item(BookName).Range.Text :=SMon;

           BookName:='Year';
       if WordDoc.Bookmarks.Exists(BookName) then
        WordDoc.Bookmarks.Item(BookName).Range.Text :=IntToStr(Year);


            BookName:='DateSale';
       if WordDoc.Bookmarks.Exists(BookName) then
        WordDoc.Bookmarks.Item(BookName).Range.Text :=DateToStr(EdStorage_Date.Date);


          BookName:='NameProd';
       if WordDoc.Bookmarks.Exists(BookName) then
        WordDoc.Bookmarks.Item(BookName).Select;
      For i := 1 To c Do
      Begin
        Application.ProcessMessages;
        idx := i;
        ReadToVars;
        WordApp.ActiveWindow.Selection.Text:=NameProd;
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=Producer;
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(Transport);
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(Fridge);
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(Sklad);
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(SDate);
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(Lot);
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(Weight_place);
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(FloatToStr(NItems[idx]));
        SumNItems := SumNItems + NItems[idx];
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(FloatToStr(NetWeight[idx]));
        SumNetWeight := SumNetWeight + NetWeight[idx];
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;
        WordApp.ActiveWindow.Selection.Text:=(FloatToStr(GrossWeight[idx]));
        SumGrossWeight := SumGrossWeight + GrossWeight[idx];
        If idx <> c Then
          WordApp.Selection.InsertRowsBelow(1);
        WordApp.Run('NextCell');
        ProgressForm.PrBar.StepIt;


      End;
        BookName:='Total';
      if WordDoc.Bookmarks.Exists(BookName) then
      WordDoc.Bookmarks.Item(BookName).Range.Text:= FloatToStr(SumNItems) ;
      WordApp.Run('NextCell');
       WordApp.ActiveWindow.Selection.Text:=FloatToStr(SumNetWeight);
      WordApp.Run('NextCell');
       WordApp.ActiveWindow.Selection.Text:=FloatToStr(SumGrossWeight);
      Text := FormOptions.DirLetters.Text + '\';
      if not DirectoryExists(text) then ForceDirectories(text);
      WordApp.ChangeFileOpenDirectory(Text);
      DateTimeToString(SDay, 'dd', Now_Date);
      DateTimeToString(SMon, 'mm', Now_Date);
      DateTimeToString(SYear, 'yy', Now_Date);
      i := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value;
      s := '������_' + SDay + SMon + SYear + '_' + IntToStr(i) + '.doc'; //FileNameLetter
      mainform.SaveWordDoc(Text + S, WordApp);
      FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value + 1;

      //print passport
      If TypeSaleProd=2 Then
      Begin
        ProgressForm.Label1.Caption := '������� ��������� ��������� � Excel';
        ProgressForm.PrBar.Position := 0;
        ProgressForm.PrBar.Maximum := 4 + 8 * c - 8;
        ProgressForm.PrBar.step:=1;
        ProgressForm.Show;
        ProgressForm.Update;

       // XL := CreateOLEObject('Excel.Application');
        XL.WorkBooks.open(ExtractFilePath(Application.ExeName) + AuthorityForm,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,emptyparam,lcid);
        XL.Visible[lcid]:=true;
        ProgressForm.PrBar.StepIt;
        // XL.visible:=true;
        DateTimeToString(SDay, 'd', Now_Date);
        DateTimeToString(SMon, 'mmmm', Now_Date);
        DateTimeToString(SYear, 'yyyy', Now_Date);
        XL.Run('SheetSource');
        //XL.Worksheets.Select('��������');
        ProgressForm.PrBar.StepIt;
        XL.Range['B1', 'B1'].Value2 := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value;
        DateTimeToString(s, 'dd.mm.yyyy', Now_Date);
        XL.Range['B2', 'B2'].Value2 := Now_Date; //s;
        XL.Range['B4', 'B4'].Value2 := L_Name;
        XL.Range['B5', 'B5'].Value2 := DataUnit.ADOPassports.FieldByName('�����').AsString;
        XL.Range['B6', 'B6'].Value2 := DataUnit.ADOPassports.FieldByName('�����').AsString;
        XL.Range['B7', 'B7'].Value2 := DataUnit.ADOPassports.FieldByName('��� �����').AsString;
        ProgressForm.PrBar.StepIt;
        XL.Range['B8', 'B8'].Value2 := DataUnit.ADOPassports.FieldByName('���� ������').AsDateTime; //SDay;
        XL.Range['B9', 'B9'].Value2 := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value - 1; //intToStr(StrtoInt(FormOptions.NumLetter.Text)-1);
        //---------
        //XL.Sheets('������������').Select;
        XL.Run('SheetAuthtority');
        ProgressForm.PrBar.StepIt;
        XL.Range['A36', 'A36'].Select;
        StartN := 36;
        NNum := IntToStr(StartN);
        idx := 1;
        ReadToVars;
        XL.Range['A' + NNum, 'A' + NNum].Value2 := IntToStr(idx);
        XL.Range['B' + NNum, 'B' + NNum].Value2 := NameProd;
        XL.Range['D' + NNum, 'D' + NNum].Value2 := '��� �����:' + Weight_place;
        XL.Range['F' + NNum, 'F' + NNum].Value2 := Packing;
        XL.Range['G' + NNum, 'G' + NNum].Value2 := Currency2Str(NItems[idx]);
        For i := 2 To c Do
        Begin
          Application.ProcessMessages;
          idx := i;
          ReadToVars;
          ProgressForm.PrBar.StepIt;
          NNum := IntToStr(StartN + idx - 2);
          ProgressForm.PrBar.StepIt;
          XL.Range['A' + NNum, 'I' + NNum].Copy(EmptyParam);
          ProgressForm.PrBar.StepIt;
          NNum := IntToStr(StartN + idx - 1);
          ProgressForm.PrBar.StepIt;
          XL.Range['A' + NNum,  'A' + NNum].select;
      {-----
  Range("A36:I36").Select
    Selection.Copy
    Range("A37").Select
    Selection.Insert Shift:=xlDown
    -------}
         // ExcelApplication1.Range['A' + NNum].Insert(xlDown,true);
          XL.Range['A' + NNum, 'A' + NNum].EntireRow.Insert(xlShiftDown, EmptyParam);
          ProgressForm.PrBar.StepIt;
          XL.Range['A' + NNum, 'A' + NNum].Value2 := IntToStr(idx);
          ProgressForm.PrBar.StepIt;
          XL.Range['B' + NNum, 'B' + NNum].Value2 := NameProd;
          XL.Range['D' + NNum, 'D' + NNum].Value2 := '��� �����:' + Weight_place;
          ProgressForm.PrBar.StepIt;
          XL.Range['F' + NNum, 'F' + NNum].Value2 := Packing;
          ProgressForm.PrBar.StepIt;
          XL.Range['G' + NNum, 'G' + NNum].Value2 := Currency2Str(NItems[idx]);
        End;
      //  XL.CutCopyMode[EmptyParam] := False;
        //XL.ChDir(FormOptions.DirAuthority.Text+'\');
        DateTimeToString(SDay, 'dd', Now);
        DateTimeToString(SMon, 'mm', Now);
        DateTimeToString(SYear, 'yy', Now);
        i := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value;
        if not DirectoryExists(FormOptions.DirAuthority.Text) then MkDir(FormOptions.DirAuthority.Text);
        s := FormOptions.DirAuthority.Text + '\������������_' + SDay + SMon + SYear + '_' + IntToStr(i) + '.xls';
        mainform.SaveExcelDoc(s, XL);

        //XL.visible:=true;
        //end print passport
        FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value + 1;
      End;
   // End;
  Finally
    ProgressForm.Free;
    WordApp.Visible:=true;//.AppShow;
  //  Worddoc.Windows.Item(0).Activate;
    If TypeSaleProd=2 Then
      XL.visible[lcid] := true;
    ///V := unAssigned;
  //  XL := unAssigned;
    //MainForm.BringToFront;
  End;
end;


procedure TSaleProd.ExportToWord2;
var
  NNum, SMon, Sday, SYear, Text, FileNameLetter: string;
  Year, Month, Day: Word;
  FWordApp, XL: Variant;
  SumNItems, SumNetWeight, SumGrossWeight: Extended;
  i, StartN: Integer;
  Now_Date: TDateTime;
begin
  Try
    FWordApp := 0; // �� ������ ���������������� ����������
    If FWordApp = 0 Then
    Begin
      SumNItems := 0;
      SumNetWeight := 0;
      SumGrossWeight := 0;
      //�������� ��� ��� �������
      L_Name := Trim(DataUnit.ADOPassports.FieldByName('�������').AsString + ' ' +
        DataUnit.ADOPassports.FieldByName('���').AsString + ' ' + DataUnit.ADOPassports.FieldByName('��������').AsString);
      //****
      ProgressForm := TProgressForm.Create(Application);
      ProgressForm.Label1.Caption := '������� ��������� ��������� � Word';
      ProgressForm.Show;
      ProgressForm.Update;
      ProgressForm.PrBar.Position := 0;
      ProgressForm.PrBar.Maximum := 11 * c;
      ProgressForm.PrBar.Minimum := 0;
      Case TypeSaleProd Of { }
        1: FileNameLetter := LetterForm;
        2: FileNameLetter := LetterForm_Dov;
      End; { case }
      WordApp.Connect;
      FWordApp := CreateOLEObject('Word.Application'); //Basic
      Text := ExtractFilePath(Application.ExeName); //+'\������.doc';
      if not DirectoryExists(text) then MkDir(text);
      FWordApp.ChangeFileOpenDirectory(Text);
      FWordApp.Documents.Open(FileName := Text + FileNameLetter, ConfirmConversions := True,
        ReadOnly := True, AddToRecentFiles := False, PasswordDocument := '',
        PasswordTemplate := '', Revert := False, WritePasswordDocument := '',
        WritePasswordTemplate := '', Format := wdOpenFormatAuto);
      FWordApp.WordBasic.EditBookmark('Num', 0, 0, 0, 1);
      i := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value;
      FWordApp.WordBasic.Insert(IntToStr(i));
      Now_Date := Date;
      DecodeDate(Now_Date, year, Month, day);

      FWordApp.WordBasic.EditBookmark('Day', 0, 0, 0, 1);
      FWordApp.WordBasic.Insert(IntToStr(Day));

      DateTimeToString(SMon, 'mmmm', Now_Date);
      FWordApp.WordBasic.EditBookmark('Month', 0, 0, 0, 1);
      FWordApp.WordBasic.Insert(SMon);

      FWordApp.WordBasic.EditBookmark('Year', 0, 0, 0, 1);
      FWordApp.WordBasic.Insert(IntToStr(Year));

      FWordApp.WordBasic.EditBookmark('DateSale', 0, 0, 0, 1);
      FWordApp.WordBasic.Insert(DateToStr(EdStorage_Date.Date));
      FWordApp.WordBasic.EditBookmark('NameProd', 0, 0, 0, 1);
      For i := 1 To c Do
      Begin
        Application.ProcessMessages;
        idx := i;
        ReadToVars;
        FWordApp.WordBasic.Insert(NameProd);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(Producer);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(Transport);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(Fridge);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(Sklad);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(SDate);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(Lot);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(Weight_place);
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(FloatToStr(NItems[idx]));
        SumNItems := SumNItems + NItems[idx];
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(FloatToStr(NetWeight[idx]));
        SumNetWeight := SumNetWeight + NetWeight[idx];
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        FWordApp.WordBasic.Insert(FloatToStr(GrossWeight[idx]));
        SumGrossWeight := SumGrossWeight + GrossWeight[idx];
        If idx <> c Then
          FWordApp.WordBasic.TableInsertRowBelow;
        FWordApp.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
      End;
      FWordApp.WordBasic.EditBookmark('Total', 0, 0, 0, 1);
      FWordApp.WordBasic.Insert(FloatToStr(SumNItems));
      FWordApp.WordBasic.nextcell;
      FWordApp.WordBasic.Insert(FloatToStr(SumNetWeight));
      FWordApp.WordBasic.nextcell;
      FWordApp.WordBasic.Insert(FloatToStr(SumGrossWeight));
      Text := FormOptions.DirLetters.Text + '\';
      if not DirectoryExists(text) then ForceDirectories(text);
      FWordApp.ChangeFileOpenDirectory(Text);
      DateTimeToString(SDay, 'dd', Now_Date);
      DateTimeToString(SMon, 'mm', Now_Date);
      DateTimeToString(SYear, 'yy', Now_Date);
      i := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value;
      s := '������_' + SDay + SMon + SYear + '_' + IntToStr(i) + '.doc'; //FileNameLetter
   //   mainform.SaveWordDoc(Text + S, FWordApp);
      FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value + 1;

      //print passport
      If TypeSaleProd=2 Then
      Begin
        ProgressForm.Label1.Caption := '������� ��������� ��������� � Excel';
        ProgressForm.PrBar.Position := 0;
        ProgressForm.PrBar.Maximum := 4 + 8 * c - 8;
        ProgressForm.Show;
        ProgressForm.Update;

        XL := CreateOLEObject('Excel.Application');
        XL.WorkBooks.open(ExtractFilePath(Application.ExeName) + AuthorityForm);
        ProgressForm.PrBar.StepIt;
        // XL.visible:=true;
        DateTimeToString(SDay, 'd', Now_Date);
        DateTimeToString(SMon, 'mmmm', Now_Date);
        DateTimeToString(SYear, 'yyyy', Now_Date);
        XL.Run('SheetSource');
        //XL.Worksheets.Select('��������');
        ProgressForm.PrBar.StepIt;
        XL.Range['B1', 'B1'].Value := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value;
        DateTimeToString(s, 'dd.mm.yyyy', Now_Date);
        XL.Range['B2', 'B2'].Value := Now_Date; //s;
        XL.Range['B4', 'B4'].Value := L_Name;
        XL.Range['B5', 'B5'].Value := DataUnit.ADOPassports.FieldByName('�����').AsString;
        XL.Range['B6', 'B6'].Value := DataUnit.ADOPassports.FieldByName('�����').AsString;
        XL.Range['B7', 'B7'].Value := DataUnit.ADOPassports.FieldByName('��� �����').AsString;
        ProgressForm.PrBar.StepIt;
        XL.Range['B8', 'B8'].Value := DataUnit.ADOPassports.FieldByName('���� ������').AsDateTime; //SDay;
        XL.Range['B9', 'B9'].Value := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value - 1; //intToStr(StrtoInt(FormOptions.NumLetter.Text)-1);
        //---------
        //XL.Sheets('������������').Select;
        XL.Run('SheetAuthtority');
        ProgressForm.PrBar.StepIt;
        XL.Range['A36', 'A36'].Select;
        StartN := 36;
        NNum := IntToStr(StartN);
        idx := 1;
        ReadToVars;
        XL.Range['A' + NNum, 'A' + NNum].Value := IntToStr(idx);
        XL.Range['B' + NNum, 'B' + NNum].Value := NameProd;
        XL.Range['D' + NNum, 'D' + NNum].Value := '��� �����:' + Weight_place;
        XL.Range['F' + NNum, 'F' + NNum].Value := Packing;
        XL.Range['G' + NNum, 'G' + NNum].Value := Currency2Str(NItems[idx]);
        For i := 2 To c Do
        Begin
          Application.ProcessMessages;
          idx := i;
          ReadToVars;
          ProgressForm.PrBar.StepIt;
          NNum := IntToStr(StartN + idx - 2);
          ProgressForm.PrBar.StepIt;
          XL.Range['A' + NNum, 'I' + NNum].Copy;
          ProgressForm.PrBar.StepIt;
          NNum := IntToStr(StartN + idx - 1);
          ProgressForm.PrBar.StepIt;
          XL.Range['A' + NNum, 'I' + NNum].Insert(Shift := xlDown);
          ProgressForm.PrBar.StepIt;
          XL.Range['A' + NNum, 'A' + NNum].Value := IntToStr(idx);
          ProgressForm.PrBar.StepIt;
          XL.Range['B' + NNum, 'B' + NNum].Value := NameProd;
          XL.Range['D' + NNum, 'D' + NNum].Value := '��� �����:' + Weight_place;
          ProgressForm.PrBar.StepIt;
          XL.Range['F' + NNum, 'F' + NNum].Value := Packing;
          ProgressForm.PrBar.StepIt;
          XL.Range['G' + NNum, 'G' + NNum].Value := Currency2Str(NItems[idx]);
        End;
        XL.CutCopyMode := False;
        //XL.ChDir(FormOptions.DirAuthority.Text+'\');
        DateTimeToString(SDay, 'dd', Now);
        DateTimeToString(SMon, 'mm', Now);
        DateTimeToString(SYear, 'yy', Now);
        i := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value;
        if not DirectoryExists(FormOptions.DirAuthority.Text) then MkDir(FormOptions.DirAuthority.Text);
        s := FormOptions.DirAuthority.Text + '\������������_' + SDay + SMon + SYear + '_' + IntToStr(i) + '.xls';
      //  mainform.SaveExcelDoc(s, XL);
        //XL.visible:=true;
        //end print passport
        FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value + 1;
      End;
    End;
  Finally
    ProgressForm.Free;
    FWordApp.WordBasic.AppShow;
    If TypeSaleProd=2 Then
      XL.visible := true;
    FWordApp:= unAssigned;
    XL := unAssigned;
    //MainForm.BringToFront;
  End;
end;
procedure TSaleProd.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  //Action:=cafree;
end;

procedure TSaleProd.FormShow(Sender: TObject);
var
  i: Integer;
begin
  i := FormOptions.FormStorage1.StoredValues.Values['ListBoxCount'].Value;
  EdNameProd.DropDownCount := i;
  EdProducer.DropDownCount := i;
  EdTransport.DropDownCount := i;
  EdFridge.DropDownCount := i;
  EdSklad.DropDownCount := i;
  EdLot.DropDownCount := i;
  EdPacking.DropDownCount := i;
  EdWeight_place.DropDownCount := i;
  TypeSaleProd := 0;
  Pages.ActivePageIndex := 0;
  //Print_to_Word.enabled := True;

  EdDate.DateTime:=now;
  EdStorage_Date.DateTime:=now;

  idx := 1;
  c := Mainform.JvDBUltimGrid1.SelectedRows.Count;
  EdNumLetter.Value := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value;
  EdNumAuthority.Value := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value;
  Kf := 1;
  SelNum.Caption := IntToStr(c);
  For i := 0 To c Do
  Begin
    NItems[i] := 0;
    NetWeight[i] := 0;
    GrossWeight[i] := 0;
    Storage_fee[i] := 0;
    Storage_Dates[i] := Date;
  End;
  MainForm.CopySelectedToStrings(Values0,ListStr0,MainForm.JvDBUltimGrid1); { TODO : �������� ��������� �� ���� ������� }
  (*try
   except
    Close;
  end;
  *)(*Values.Strings.Clear;
  ListStr.Strings.Clear;
  Mainform.dxDBGrid1.SaveSelectedToStrings(ListStr.Strings);
  n:=Mainform.dxDBGrid1.ColumnCount - 1;
  //for i:= 0 to c-1 do
  //begin
  nm:=ListStr.Strings.Strings[0];
  l:=1;
  for v:=0 to n do
   begin
   t:='';
    while (nm[l]>=' ') and (l<=Length(nm)) do
    begin
    t:=t+nm[l];
    inc(l);
    end;
   inc(l);
   if t<>'' then Values.Strings.Append(t);
   end;

  for i:=1 to c do
   begin
  nm:=ListStr.Strings.Strings[i];
  l:=1;
  for v:=0 to n do
   begin
   t:='';
   while (nm[l]>=' ') and (l<=Length(nm)) do
   begin
    t:=t+nm[l];
    inc(l);
   end;
   inc(l);
   s:=Values.Strings.Strings[v];
   Values.Strings.Values[s+inttostr(i)]:=t;
   end;
   end;
  *)
  Back.Enabled := False;
  Next.Enabled := True;

  Index.Caption := IntToStr(idx);
  If idx = c Then
    BtnDone
  Else
    BtnNext;

  ReadValues;

end;

procedure TSaleProd.Mul_NetW;
var
  w, g: Extended;
begin
  Try
    If TryStrToFloat(Weight_place,w) Then
    Begin
      NetWeight[idx] :=w * EdN_Items.Value;
      edNet_Weight.Text :=  FloatToStr ( NetWeight[idx]) ;
    End;
  Except
  End;
  Try
    Kf := StrtoFloat(GetNameByKey('Pack', EdPacking.Text, 'Num',Datas.ADOPacks ));  //Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num');
    g := Kf * NetWeight[idx];
    EdGross_weight.text  := FloatToStr(g);
  Except
  End;
end;

function TSaleProd.GetNameByKey(KeyField,key,field2: string; tbl: TADOTable): string;
var
v: variant;
begin
    v := tbl.Lookup(KeyField,key, field2);
   if v<>False then result:=VarToStr(v);
end;

procedure TSaleProd.NextClick(Sender: TObject);
begin
  //if EdN_Items.Value=0 then EdN_Items.Enabled:=
  If idx <> c Then
  Begin
    Inc(idx);
    Index.Caption := IntToStr(idx);
    If idx = c Then
      BtnDone;
    Back.Enabled := True;
    ReadValues;
  End
  Else
  Begin
    ///////
    Pages.SelectNextPage(False, false);
    ///////
  End;
end;

procedure TSaleProd.PackChange;
begin
{  Try
    Kf := StrtoFloat(GetNameByKey('Pack', EdPacking.Text, 'Num',Datas.Packs ));//Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num');
  Except
    Kf := 1;
  End; }
end;

procedure TSaleProd.Print_to_WordClick(Sender: TObject);
var
  i: Integer;
begin
TypeSaleProd:=  (sender as tbitbtn).Tag ;

  Try
  (sender as tbitbtn).enabled := False;
    ExportToWord;
    For i := 1 To c Do
    Begin
      idx := i;
      ReadToVars;   { TODO : Locate - ��������! }
      If DataUnit.ADOsklad.Locate('NameProd;Producer;Transport;Fridge;Sklad;Lot;Packing;Weight_place',
        VarArrayOf([NameProd, Producer, Transport, Fridge, Sklad, Lot, Packing, Weight_place]), []) Then
      Begin
        N_Items := DataUnit.ADOsklad.FieldByName('N_Items').AsFloat - NItems[idx];
        If N_Items = 0 Then //<=0
          DataUnit.ADOsklad.Delete
        Else
        Begin
          Net_Weight := DataUnit.ADOsklad.FieldByName('Net_Weight').AsFloat - NetWeight[idx];
          Gross_weight := DataUnit.ADOsklad.FieldByName('Gross_weight').AsFloat - Grossweight[idx];
          DataUnit.ADOsklad.Edit;
          DataUnit.ADOsklad.FieldByName('N_Items').AsFloat := N_Items;
          DataUnit.ADOsklad.FieldByName('Net_Weight').AsFloat := Net_Weight;
          DataUnit.ADOsklad.FieldByName('Gross_weight').AsFloat := Gross_weight;
          DataUnit.ADOsklad.Post;
        End;
        IncomingProd.LogProd(DataUnit.ADOSaleLog, Nameprod, Producer, Transport, Fridge, Sklad, SDate, Lot, Weight_place,
          FloatToStr(NItems[idx]), FloatToStr(NetWeight[idx]),  { TODO : key violation }
          FloatToStr(Grossweight[idx]), CurrToStr(Storage_fee[idx]), '', L_Name, IntToStr(FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value - 1));
      End
      Else
      Begin // error
        MessageDlg('������! ������ �� �������!', mtError, [mbOK], 0);
        //  DataUnit.Sklad.Cancel;
      End;
    End;
  Except
    //  ProgressForm.Free;
      MessageDlg('������! ������ ��������� �������!',mtError,[mbOK],0);
  End;
  //close;
  //Print_to_Word.enabled := True;
end;

procedure TSaleProd.ReadToVars;

  //var
  //Char,n: currency;
  //Per,Nper,nday : Integer;

begin
  Try
    NameProd := Trim(MainForm.Values.Strings.Values['NameProd' + IntToStr(idx)]);
    Producer := Trim(MainForm.Values.Strings.Values['Producer' + IntToStr(idx)]);
    Transport := Trim(MainForm.Values.Strings.Values['Transport' + IntToStr(idx)]);
    Fridge := Trim(MainForm.Values.Strings.Values['Fridge' + IntToStr(idx)]);
    Sklad := Trim(MainForm.Values.Strings.Values['Sklad' + IntToStr(idx)]);
    SDate := Trim(MainForm.Values.Strings.Values['Date' + IntToStr(idx)]);
    Lot := Trim(MainForm.Values.Strings.Values['Lot' + IntToStr(idx)]);
    Packing := Trim(MainForm.Values.Strings.Values['Packing' + IntToStr(idx)]);
    Weight_place := Trim(MainForm.Values.Strings.Values['Weight_place' + IntToStr(idx)]);

    N_Items := StrToFloat(Trim(MainForm.Values.Strings.Values['N_Items' + IntToStr(idx)]));
    Net_Weight := StrToFloat(Trim(MainForm.Values.Strings.Values['Net_Weight' + IntToStr(idx)]));
    Gross_weight := StrToFloat(Trim(MainForm.Values.Strings.Values['Gross_weight' + IntToStr(idx)]));
    //++++++++++++++++++++++++++++++++++++++++=
    {
    nday:=DaysBetween(Storage_Dates[idx],StrToDate(SDate))+1;
    NPer:=0;
    Storage_fee[idx]:=0;
    if not Datas.Fridges.Locate('Fridge',Fridge,[loCaseInsensitive]) then
     Datas.Fridges.AppendRecord([Fridge,Sklad]);
    Datas.Periods.Filter:='Fridge='+QuotedStr(Fridge);
    Datas.Periods.Filtered:=True;
    //Datas.Periods.FilterOptions:=[foCaseInsensitive,foNoPartialCompare];
    Datas.Periods.findfirst;
    //Datas.Periods.First;
    //while not Datas.Periods.Eof do
    repeat
           Per:=Datas.Periods.fieldByName('Periods').AsInteger;
           Char:=Datas.Periods.fieldByName('Charges').AsCurrency;
           NPer:=NPer+Per;
           if NPer>nday then Break;
           Storage_fee[idx]:=Storage_fee[idx]+(Per*Char*(Gross_weight/1000));
       //   Datas.Periods.Next;
    until not Datas.Periods.FindNext;
    n:=nday-(NPer-Per);
    Storage_fee[idx]:=Storage_fee[idx]+(n*Char*(Gross_weight/1000));
    Datas.Periods.Filtered:=False;   {
    LbPer.Caption:=IntToStr(Per)+' ��.';
    LbChar.Caption:=CurrToStr(Char)+' �.';
    LbDay.Caption:= IntToStr(nday)+' ��.';
    LbTotal.Caption:= CurrToStr(Storage_fee);
     }
    //++++++++++++++++++++++++++++++++++++++++++
  Except
    // ShowMessage('������ ������ � ����������!!!');
  End;
end;

procedure TSaleProd.ReadValues;
var
  _Char, n: Currency;
  Per, Nper, np: Integer;
  nday: LongInt;
begin
    Try    { TODO 5 : ����������!!! }
        NameProd := MainForm.Values.Strings.Values['NameProd' + IntToStr(idx)];
        Producer := MainForm.Values.Strings.Values['Producer' + IntToStr(idx)];
        Transport := MainForm.Values.Strings.Values['Transport' + IntToStr(idx)];
        Fridge := MainForm.Values.Strings.Values['Fridge' + IntToStr(idx)];
        Sklad := MainForm.Values.Strings.Values['Sklad' + IntToStr(idx)];
        //    EdDate.Date:= StrToDate(Values.Strings.Values['����'+IntToStr(idx)]);
        Lot := MainForm.Values.Strings.Values['Lot' + IntToStr(idx)];
        Packing := MainForm.Values.Strings.Values['Packing' + IntToStr(idx)];
        Weight_place := MainForm.Values.Strings.Values['Weight_place' + IntToStr(idx)];
        Comment := MainForm.Values.Strings.Values['Comment' + IntToStr(idx)];
        SStorage_Date :=DateToStr(Storage_Dates[idx]);
        //    Storage_Dates[idx]:=StrToDate(Values.Strings.Values['���� �������'+IntToStr(idx)]);
      sDate := MainForm.Values.Strings.Values['Date' + IntToStr(idx)]; //Dates[idx];
      LbAllItems.Caption := MainForm.Values.Strings.Values['N_Items' + IntToStr(idx)];
      N_ItemsMax := strtofloat(MainForm.Values.Strings.Values['N_Items' + IntToStr(idx)]);
      Net_Weight :=(NetWeight[idx]); //Values.Strings.Values['��� �����'+IntToStr(idx)];
      Gross_weight := (Grossweight[idx]); //Values.Strings.Values['��� ������'+IntToStr(idx)];
      N_Items := (NItems[idx]);

  EdNameProd.Text := NameProd;
  EdProducer.Text := Producer;
  EdTransport.Text := Transport;
  EdFridge.Text := Fridge;
  EdSklad.Text := Sklad;
  EdDate.Date := StrToDate(SDate); //
  EdLot.Text := Lot;
  EdPacking.Text := Packing;
  EdWeight_place.Text := Weight_place;
  EdN_Items.Value := N_Items;
  EdN_Items.MaxValue:=N_ItemsMax;
  EdN_Items.MinValue:=N_ItemsMin;
  EdNet_Weight.Text := FloatToStr(Net_Weight);
  EdGross_weight.Text := FloatToStr(Gross_weight);
  EdComment.Text := Comment;
        //***************************************
      nday := DaysBetween(Storage_Dates[idx], strtodate(sDate)) + 1;
      NPer := 0;
      np := 0;
      Storage_fee[idx] := 0;
      If Not Datas.ADOFridges.Locate('Fridge', EdFridge.Text, [loCaseInsensitive]) Then { TODO : Locate �������� }
        Datas.ADOFridges.AppendRecord([EdFridge.Text, EdSklad.Text]);
      Datas.ADOPeriods.Filter := 'Fridge=' + QuotedStr(Fridge);
      Datas.ADOPeriods.Filtered := True;
      LbFridge.Visible := (Datas.ADOPeriods.RecordCount < 1);
      Datas.ADOPeriods.FindFirst;
      Repeat
        Inc(np);
        Per := Datas.ADOPeriods.fieldByName('Periods').AsInteger;
        _Char := Datas.ADOPeriods.fieldByName('Charges').AsCurrency;
        NPer := NPer + Per;
        If NPer > nday Then
          Break;
        Storage_fee[idx] := Storage_fee[idx] + (Per * _Char * (Gross_weight) / 1000);
      Until Not Datas.ADOPeriods.FindNext;
      If NPer > nday Then
        n := nday - (NPer - Per)
      Else
        n := nday - NPer;
      Storage_fee[idx] := Storage_fee[idx] + (n * _Char * (Gross_weight) / 1000);
      If LbFridge.Visible Then
      Begin
        LbPer.Caption := '���';
        LbChar.Caption := '���';
        LbDay.Caption := IntToStr(nday) + ' ��.';
        LbTotal.Caption := '0 �.';
      End
      Else
      Begin
        LbPer.Caption := IntToStr(Per) + ' ��. (' + IntToStr(np) + ')';
        LbChar.Caption := CurrToStr(_Char) + ' �.';
        LbDay.Caption := IntToStr(nday) + ' ��.';
        LbTotal.Caption := FormatCurr('# ##0.00', Storage_fee[idx]) + ' �.';
      End;
      Datas.ADOPeriods.Filtered := False;
        //***************************************
    Except
      ShowMessage('������ ������ �� �������!!!');
  end;

end;

procedure TSaleProd.Summ_ItemsNet;
var
  i: Integer;
  SumItems, SumNet: Real;
begin
  //
  SumItems := 0;
  SumNet := 0;
  For I := 1 To c Do { Iterate }
  Begin
    SumItems := SumItems + NItems[i];
    SumNet := SumNet + NetWeight[i];
  End; { for }
  LbSumItems.Caption := FloatToStr(SumItems);
  LbSumNet_Weight.Caption := FloatToStr(SumNet);
end;



End.






