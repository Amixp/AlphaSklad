Unit SaleProd1;

Interface

Uses Forms,
  Dialogs,
  vcl.Graphics,
  ComObj,
  DB, IOUtils,
  Variants, data.Win.ADODB,
  SysUtils,
  DateUtils,

  StdCtrls,
  Buttons,
  ComCtrls,
  Controls,
  ExtCtrls,
  Classes,
  DBCtrls, windows,

  Spin, JvStringHolder, JvExControls, JvComponent, JvLabel, JvDBLookup,
  Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvCombobox, JvSpin, JvEdit,
  UnitService,
  OleServer, WordXP, ExcelXP, JvDBLookupTreeView, vcl.Grids, vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvBitBtn, JvExButtons, JvButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

Type
TNetGross = record
 NetWeight, GrossWeight: Extended;
 end;

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

    TabSheet2: TTabSheet;
    Label18: TLabel;
    BtnPrintLetter: TBitBtn;
    BtnPrintDoverka: TBitBtn;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    ListPassports: TJvDBUltimGrid;
    EdFilterPassport: TEdit;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    BtnAddClient: TBitBtn;
    btnSetMaxN_items: TBitBtn;
    FDQuery1: TFDQuery;
    FDTable1: TFDTable;
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
    procedure EdFilterPassportChange(Sender: TObject);
    procedure DBGRidListPassportsSelect(Column: TColumn);
    procedure BtnAddClientClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ListPassportsDblClick(Sender: TObject);
    procedure btnSetMaxN_itemsClick(Sender: TObject);
        function Mul_NetW_ex(iNumItems: extended; sWeightPlace,
      sPacking: string): TNetGross;
  private

    procedure SelectPassport;


  public
    Kf: Extended;
    // SaleEdit: TSaleProdEdit;
    MaxNums: Array Of real;
    NItems: Array [1 .. 1024] Of Extended;
    NetWeight: Array [1 .. 1024] Of Extended;
    GrossWeight: Array [1 .. 1024] Of Extended;
    Storage_Dates: Array [1 .. 1024] Of TDateTime;
    Storage_fee: Array [1 .. 1024] Of Currency;
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
  DataUnit1,
  FormOptions1,
  IncomingUnit,
  Progressform1,
  Datas1,
  SavedFormUnit,
  FormPassportsUnit, UnitClientForm;

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
  If idx < c Then
  begin
    BtnNext;
    ReadValues;
  end
  else
  begin
    Pages.SelectNextPage(False);
    Pages.ActivePageIndex := Pages.ActivePageIndex - 1;
  end;
end;

procedure TSaleProd.NextClick(Sender: TObject);
begin
  // if EdN_Items.Value=0 then EdN_Items.Enabled:=
  inc(idx);
  Index.Caption := IntToStr(idx);
  If idx = c Then
    BtnDone;
  If (idx > 0) and (idx <= c) Then
  Begin
    Back.Enabled := true;
    ReadValues;
  End
  Else
  Begin
    /// ////
    Pages.SelectNextPage(true, False);
    /// ////
  End;
end;

procedure TSaleProd.OnSelectPassport(Sender: TObject);
begin
  { FormPassports := TFormPassports.Create(self);
    FormPassports.ShowModal;
    FormPassports.Free;
    BtnPrintLetter.Enabled := true;
    BtnPrintDoverka.Enabled := true; }
end; { DONE : включать кнопки печати после выбора клиента }

{ DONE : Добавить отображение выбранного клиента }
{ TODO : Переделать под sql }
procedure TSaleProd.BitBtn1Click(Sender: TObject);
begin
  ClientForm := TClientForm.Create(self);
  ClientForm.Caption := 'Редактирование данных клиента';
  { With ListPassports Do
    Begin
    PassClient.Surname := FocusedNode.Strings[ColumnByFieldName('Фамилия').Index];
    PassClient.Name := FocusedNode.Strings[ColumnByFieldName('Имя').Index];
    PassClient.Patronymic := FocusedNode.Strings[ColumnByFieldName('Отчество').Index];
    PassClient.PassSeries := FocusedNode.Strings[ColumnByFieldName('Серия').Index];
    PassClient.PassNumber := FocusedNode.Strings[ColumnByFieldName('Номер').Index];
    PassClient.PassWhoGive := FocusedNode.Strings[ColumnByFieldName('Кем выдан').Index];
    s := FocusedNode.Strings[ColumnByFieldName('Дата выдачи').Index];
    If s <> '' Then
    PassClient.PassDateGive := StrToDate(s);
    PassClient.Firm := FocusedNode.Strings[ColumnByFieldName('Фирма').Index];
    PassClient.Address := FocusedNode.Strings[ColumnByFieldName('Адрес').Index];
    PassClient.Phone := FocusedNode.Strings[ColumnByFieldName('Телефон').Index];
    PassClient.Comment := FocusedNode.Strings[ColumnByFieldName('Примечание').Index];
    End;
    s := 'Фамилия;Имя;Отчество;Серия;Номер;Кем выдан;Дата выдачи;Фирма;Адрес;Телефон;Примечание';
    With DataUnit.Passports Do
    Begin
    Locate(s, VarArrayOf([PassClient.Surname,
    PassClient.Name,
    PassClient.Patronymic,
    PassClient.PassSeries,
    PassClient.PassNumber,
    PassClient.PassWhoGive,
    PassClient.PassDateGive,
    PassClient.Firm,
    PassClient.Address,
    PassClient.Phone,
    PassClient.Comment]), []); }
  SelectPassport;
  DataUnit.FDPassports.Edit;
  // end;
  with PassClient do
  begin
    ClientForm.EdLastName.Text := Surname;
    ClientForm.EdName.Text := Name;
    ClientForm.EdSurname.Text := Patronymic;
    ClientForm.EdPassSeries.Text := PassSeries;
    ClientForm.EdPassNumber.Text := PassNumber;
    ClientForm.EdPassWhoGive.Text := PassWhoGive;
    ClientForm.EdDate.Date := PassDateGive;
    ClientForm.EdFirm.Text := Firm;
    ClientForm.EdAddr.Text := Address;
    ClientForm.EdPhone.Text := Phone;
    ClientForm.EdComment.Text := Comment;
  end;
  if ClientForm.ShowModal = mrOK then
  begin
    with PassClient do
    begin
      Surname := trim(ClientForm.EdLastName.Text);
      Name := trim(ClientForm.EdName.Text);
      Patronymic := trim(ClientForm.EdSurname.Text);
      PassSeries := trim(ClientForm.EdPassSeries.Text);
      PassNumber := trim(ClientForm.EdPassNumber.Text);
      PassWhoGive := trim(ClientForm.EdPassWhoGive.Text);
      PassDateGive := ClientForm.EdDate.Date;
      Firm := trim(ClientForm.EdFirm.Text);
      Address := trim(ClientForm.EdAddr.Text);
      Phone := trim(ClientForm.EdPhone.Text);
      Comment := trim(ClientForm.EdComment.Text);
    end;
    with PassClient do
    begin
      DataUnit.FDPassports.FieldByName('Фамилия').AsString := Surname;
      DataUnit.FDPassports.FieldByName('Имя').AsString := Name;
      DataUnit.FDPassports.FieldByName('Отчество').AsString := Patronymic;
      DataUnit.FDPassports.FieldByName('Серия').AsString := PassSeries;
      DataUnit.FDPassports.FieldByName('Номер').AsString := PassNumber;
      DataUnit.FDPassports.FieldByName('Кем выдан').AsString := PassWhoGive;
      DataUnit.FDPassports.FieldByName('Дата выдачи').AsDateTime :=
        PassDateGive;
      DataUnit.FDPassports.FieldByName('Фирма').AsString := Firm;
      DataUnit.FDPassports.FieldByName('Адрес').AsString := Address;
      DataUnit.FDPassports.FieldByName('Телефон').AsString := Phone;
      DataUnit.FDPassports.FieldByName('Примечание').AsString := Comment;
      DataUnit.FDPassports.Post;
    end;

  end
  else
    DataUnit.FDPassports.Cancel;
  ClientForm.Free;
end;

procedure TSaleProd.BitBtn2Click(Sender: TObject);
begin
  Pages.SelectNextPage(true, False);
end;

procedure TSaleProd.SelectPassport;
var
  S: string;
begin
  With ListPassports.DataSource.DataSet Do
  Begin   { TODO : Change to SQL }
    PassClient.ID := FieldByName('id').AsInteger;
    PassClient.Surname := FieldByName('Фамилия').AsString;
    PassClient.Name := FieldByName('Имя').AsString;
    PassClient.Patronymic := FieldByName('Отчество').AsString;
    PassClient.PassSeries := FieldByName('Серия').AsString;
    PassClient.PassNumber := FieldByName('Номер').AsString;
    PassClient.PassWhoGive := FieldByName('Кем выдан').AsString;
    S := FieldByName('Дата выдачи').AsString;
    If S <> '' Then
      PassClient.PassDateGive := StrToDate(S);
    PassClient.Firm := FieldByName('Фирма').AsString;
    PassClient.Address := FieldByName('Адрес').AsString;
    PassClient.Phone := FieldByName('Телефон').AsString;
    PassClient.Comment := FieldByName('Примечание').AsString;
  End;
  S := 'Фамилия;Имя;Отчество;Серия;Номер;Кем выдан;Дата выдачи;Фирма;Адрес;Телефон;Примечание';
  With DataUnit.FDPassports Do
  Begin { TODO : заменить на select SQL }
    Locate(S, VarArrayOf([PassClient.Surname, PassClient.Name,
      PassClient.Patronymic, PassClient.PassSeries, PassClient.PassNumber,
      PassClient.PassWhoGive, PassClient.PassDateGive, PassClient.Firm,
      PassClient.Address, PassClient.Phone, PassClient.Comment]), []);
  End;
end;

procedure TSaleProd.BitBtn5Click(Sender: TObject);
begin
  If MessageDlg('Удалить выбранного клиента?', mtConfirmation, [mbOK, mbCancel],
    0) In [mrOK] Then  { TODO : Change to SQL }
    DataUnit.FDPassports.delete;

end;

procedure TSaleProd.btnSetMaxN_itemsClick(Sender: TObject);
begin
EdN_Items.value :=EdN_Items.MaxValue  ;
end;

procedure TSaleProd.BtnAddClientClick(Sender: TObject);
begin
  // formoptions.PageControl1.ActivePageIndex := 4;
  // FormOptions.ShowModal;
  // formoptions.PageControl1.ActivePageIndex := 0;
  ClientForm := TClientForm.Create(self);
  ClientForm.Caption := 'Новый клиент';
  if ClientForm.ShowModal = mrOK then
  begin
    with PassClient do
    begin    { TODO : Change to SQL }
      Surname := trim(ClientForm.EdLastName.Text);
      Name := trim(ClientForm.EdName.Text);
      Patronymic := trim(ClientForm.EdSurname.Text);
      PassSeries := trim(ClientForm.EdPassSeries.Text);
      PassNumber := trim(ClientForm.EdPassNumber.Text);
      PassWhoGive := trim(ClientForm.EdPassWhoGive.Text);
      PassDateGive := ClientForm.EdDate.Date;
      Firm := trim(ClientForm.EdFirm.Text);
      Address := trim(ClientForm.EdAddr.Text);
      Phone := trim(ClientForm.EdPhone.Text);
      Comment := trim(ClientForm.EdComment.Text);
    end;
    try
      DataUnit.FDPassports.Append;
      with PassClient do
      begin
        DataUnit.FDPassports.FieldByName('Фамилия').AsString := Surname;
        DataUnit.FDPassports.FieldByName('Имя').AsString := Name;
        DataUnit.FDPassports.FieldByName('Отчество').AsString := Patronymic;
        DataUnit.FDPassports.FieldByName('Серия').AsString := PassSeries;
        DataUnit.FDPassports.FieldByName('Номер').AsString := PassNumber;
        DataUnit.FDPassports.FieldByName('Кем выдан').AsString := PassWhoGive;
        DataUnit.FDPassports.FieldByName('Дата выдачи').AsDateTime :=
          PassDateGive;
        DataUnit.FDPassports.FieldByName('Фирма').AsString := Firm;
        DataUnit.FDPassports.FieldByName('Адрес').AsString := Address;
        DataUnit.FDPassports.FieldByName('Телефон').AsString := Phone;
        DataUnit.FDPassports.FieldByName('Примечание').AsString := Comment;
        DataUnit.FDPassports.Post;
      end;
    except
    end;
  End;
  ClientForm.Free;
end;

procedure TSaleProd.BtnDone;
begin
  Next.Font.Style := [fsBold];
  Next.Font.Size := 8;
  Next.Caption := 'Готово';
  Next.Enabled := (EdN_Items.value <> 0);
end;

procedure TSaleProd.BtnNext;
begin
  Next.Font.Style := [];
  Next.Font.Size := 8;
  Next.Caption := 'Вперед';
  Next.Enabled := (EdN_Items.value <> 0);
end;

procedure TSaleProd.Button1Click(Sender: TObject);
begin
  FormOptions.PageControl1.ActivePageIndex := 2;
  FormOptions.FridgeList.DataSource.DataSet.Locate('Fridge', EdFridge.Text,
    [loCaseInsensitive]);
  FormOptions.ShowModal;
  FormOptions.PageControl1.ActivePageIndex := 0;
  ReadValues;
end;

function TSaleProd.currency2Str(value: double): string;

Const
  hundreds: Array [0 .. 9] Of String = ('', ' сто', ' двести', ' триста',
    ' четыреста', ' пятьсот', ' шестьсот', ' семьсот', ' восемьсот',
    ' девятьсот');

  tens: Array [0 .. 9] Of String = ('', '', ' двадцать', ' тридцать', ' сорок',
    ' пятьдесят', ' шестьдесят', ' семьдесят', ' восемьдесят', ' девяносто');
  ones: Array [0 .. 19] Of String = ('', '', '', ' три', ' четыре', ' пять',
    ' шесть', ' семь', ' восемь', ' девять', ' десять', ' одиннадцать',
    ' двенадцать', ' тринадцать', ' четырнадцать', ' пятнадцать',
    ' шестнадцать', ' семнадцать', ' восемнадцать', ' девятнадцать');
  razryad: Array [0 .. 6] Of String = ('', ' тысяч', ' миллион', ' миллиард',
    ' триллион', ' квадриллион', ' квинтиллион');

Var
  S: String;
  i: integer;
  val: int64;

  Function shortNum(S: String; raz: integer): String;
  Begin
    Result := hundreds[StrToInt(S[1])];
    If StrToInt(S) = 0 Then
      Exit;
    If S[2] <> '1' Then
    Begin
      Result := Result + tens[StrToInt(S[2])];
      Case StrToInt(S[3]) Of
        1:
          If raz = 1 Then
            Result := Result + ' одна'
          Else
            Result := Result + ' один';
        2:
          If raz = 1 Then
            Result := Result + ' две'
          Else
            Result := Result + ' два';
      Else
        Result := Result + ones[StrToInt(S[3])];
      End;
      Result := Result + razryad[raz];
      Case StrToInt(S[3]) Of
        0, 5, 6, 7, 8, 9:
          If raz > 1 Then
            Result := Result + 'ов';
        1:
          If raz = 1 Then
            Result := Result + 'а';
        2, 3, 4:
          If raz = 1 Then
            Result := Result + 'и'
          Else If raz > 1 Then
            Result := Result + 'а';
      End;
    End
    Else
    Begin
      Result := Result + ones[StrToInt(Copy(S, 2, 2))];
      Result := Result + razryad[raz];
      If raz > 1 Then
        Result := Result + 'ов';
    End;
  End;

begin

  val := Trunc(value);
  If val = 0 Then
  Begin
    Result := 'ноль';
    Exit;
  End;
  S := IntToStr(val);
  Result := '';
  i := 0;
  While Length(S) > 0 Do
  Begin
    Result := shortNum(Copy('00' + S, Length('00' + S) - 2, 3), i) + Result;
    If Length(S) > 3 Then
      S := Copy(S, 1, Length(S) - 3)
    Else
      S := '';
    inc(i);
  End;
  // s:=IntToStr(Trunc((value-val)*100+0.5));
  // Result:=Result+' руб. '+s+' коп.';
end;

procedure TSaleProd.DBGRidListPassportsSelect(Column: TColumn);

begin
  SelectPassport;
  BtnPrintLetter.Enabled := true;
  BtnPrintDoverka.Enabled := true;
end;

procedure TSaleProd.EdDateChange(Sender: TObject);
begin
  EdStorage_Date.MinDate := EdDate.Date;
end;

procedure TSaleProd.EdFilterPassportChange(Sender: TObject);
var
  F: string;
begin
  F := '';
  If trim(EdFilterPassport.Text) <> '' Then
  Begin
    F := '[Фамилия] like ' + AnsiQuotedStr('%' + trim(EdFilterPassport.Text) +
      '%', Quote1);
    F := F + ' OR ';
    F := F + '[Имя] like ' + AnsiQuotedStr('%' + trim(EdFilterPassport.Text) +
      '%', Quote1);
    F := F + ' OR ';
    F := F + '[Отчество] like ' + AnsiQuotedStr
      ('%' + trim(EdFilterPassport.Text) + '%', Quote1);
    F := F + ' OR ';
    F := F + '[Телефон] like ' + AnsiQuotedStr('%' + trim(EdFilterPassport.Text)
      + '%', Quote1);
    F := F + ' OR ';
    F := F + '[Фирма] like ' + AnsiQuotedStr('%' + trim(EdFilterPassport.Text) +
      '%', Quote1);
    F := F + ' OR ';
    F := F + '[Примечание] like ' + AnsiQuotedStr
      ('%' + trim(EdFilterPassport.Text) + '%', Quote1);
  End;
  Try
    DataUnit.FDPassports.Filter := F;
    DataUnit.FDPassports.Filtered := trim(EdFilterPassport.Text) <> '';
    DataUnit.FDPassports.Refresh;
    // ListPassports.Refresh;
  Except
  End;

end;

procedure TSaleProd.EdGross_weightChange(Sender: TObject);
begin
  TryStrToFloat(EdGross_weight.Text, GrossWeight[idx])
end;

procedure TSaleProd.EdNet_WeightChange(Sender: TObject);
begin
  if TryStrToFloat(EdNet_Weight.Text, NetWeight[idx]) then
  begin
    // ReadToVars;
    Mul_NetW;
    Summ_ItemsNet;
  end;
end;

procedure TSaleProd.EdNumAuthorityChange(Sender: TObject);
begin
  // NumLetter:=FormOptions.FormStorage1.StoredValues.Values['NumLetter'].Value;;
  FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].value :=
    EdNumAuthority.value;

end;

procedure TSaleProd.EdNumLetterChange(Sender: TObject);
begin
  FormOptions.FormStorage1.StoredValues.Values['NumLetter'].value :=
    EdNumLetter.value;
  // NumAuthority:=FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].Value;;

end;

procedure TSaleProd.EdN_ItemsChange(Sender: TObject);
begin
  If EdN_Items.Text <> '' Then
  Begin
    NItems[idx] := EdN_Items.value;
    PackChange;
    ReadValues;
    Mul_NetW;
  End;
  If EdN_Items.value > EdN_Items.MaxValue Then
    EdN_Items.Font.Color := clRed
  Else
    EdN_Items.Font.Color := clWindowText;
  Next.Enabled := ((EdN_Items.value <> 0) And
    (EdN_Items.value <= EdN_Items.MaxValue));
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
  S: string;
begin
  S := EdWeight_place.Text;
  If Pos('.', S) > 0 Then
  Begin
    If FormatSettings.DecimalSeparator <> '.' Then
      S[Pos('.', S)] := FormatSettings.DecimalSeparator;
  End
  Else If Pos(',', S) > 0 Then
    If FormatSettings.DecimalSeparator <> ',' Then
      S[Pos(',', S)] := FormatSettings.DecimalSeparator;
  EdWeight_place.Text := S;
end;

procedure TSaleProd.ExportToWord;
var
  BookName, NNum, SMon, Sday, SYear, Text, FileNameLetter: string;
  Year, Month, Day: Word;
  // FWordApp,
  WordDoc: WordDocument;
  XL: TExcelApplication;
  WordAp: TWordApplication;
  SumNItems, SumNetWeight, SumGrossWeight: Extended;
  i, StartN: integer;
  Now_Date: TDateTime;
begin
  XL := TExcelApplication.Create(self);
  WordAp := TWordApplication.Create(self);
  // Try
  /// FWordApp:= 0; // не забудь инициализировать переменную
  // If WordApp. = 0 Then
  //
  SumNItems := 0;
  SumNetWeight := 0;
  SumGrossWeight := 0;
  // Компания или ФИО клиента
  L_Name := trim(PassClient.Surname + ' ' + PassClient.Name + ' ' +
    PassClient.Patronymic);
  // ****
  ProgressForm := TProgressForm.Create(Application);
  ProgressForm.Label1.Caption := 'Вставка выбранной продукции в Word';
  ProgressForm.Show;
  ProgressForm.Update;
  ProgressForm.PrBar.Position := 0;
  ProgressForm.PrBar.Maximum := 11 * c;
  ProgressForm.PrBar.Minimum := 0;
  Case TypeSaleProd Of { }
    1:
      FileNameLetter := LetterForm;
    2:
      FileNameLetter := LetterForm_Dov;
  End; { case }
  /// /   WordApp:= createOleObject('Word.Application') as WordApplication; //Basic
  { if Assigned(FWordApp) then
    begin
    FWordApp.Visible := False;
    end
    else
    raise Exception.Create('Cannot initialize Word application');
    end; }
  Text := ExtractFilePath(Application.ExeName); // +'\Письмо.doc';
  if not DirectoryExists(Text) then
    MkDir(Text);

  WordAp.ChangeFileOpenDirectory(Text);
  while WordAp.Templates.Count = 0 do
    Sleep(200);
  WordDoc := WordAp.Documents.Open(Text + FileNameLetter, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, False, EmptyParam, EmptyParam,
    EmptyParam);

  i := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].value;
  BookName := 'Num';
  if WordDoc.Bookmarks.Exists(BookName) then
    WordDoc.Bookmarks.Item(BookName).Range.Text := IntToStr(i);
  Now_Date := Date;
  DecodeDate(Now_Date, Year, Month, Day);

  BookName := 'Day';
  if WordDoc.Bookmarks.Exists(BookName) then
    WordDoc.Bookmarks.Item(BookName).Range.Text := IntToStr(Day);

  DateTimeToString(SMon, 'mmmm', Now_Date);
  BookName := 'Month';
  if WordDoc.Bookmarks.Exists(BookName) then
    WordDoc.Bookmarks.Item(BookName).Range.Text := SMon;

  BookName := 'Year';
  if WordDoc.Bookmarks.Exists(BookName) then
    WordDoc.Bookmarks.Item(BookName).Range.Text := IntToStr(Year);

  BookName := 'DateSale';
  if WordDoc.Bookmarks.Exists(BookName) then
    WordDoc.Bookmarks.Item(BookName).Range.Text :=
      DateToStr(EdStorage_Date.Date);

  BookName := 'DateSale2';
  if WordDoc.Bookmarks.Exists(BookName) then
    WordDoc.Bookmarks.Item(BookName).Range.Text :=
      DateToStr(incday(EdStorage_Date.Date, 1));

  BookName := 'NameProd';
  if WordDoc.Bookmarks.Exists(BookName) then
    WordDoc.Bookmarks.Item(BookName).Select;
  For i := 1 To c Do
  Begin
    Application.ProcessMessages;
    idx := i;
    ReadToVars;
    with WordAp do
    begin
      ActiveWindow.Selection.Text := NameProd;
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := Producer;
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (Transport);
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (Fridge);
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (Sklad);
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (SDate);
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (Lot);
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (Weight_place);
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (FloatToStr(NItems[idx]));
      SumNItems := SumNItems + NItems[idx];
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (FloatToStr(NetWeight[idx]));
      SumNetWeight := SumNetWeight + NetWeight[idx];
      Run('NextCell');
      ProgressForm.PrBar.StepIt;
      ActiveWindow.Selection.Text := (FloatToStr(GrossWeight[idx]));
      SumGrossWeight := SumGrossWeight + GrossWeight[idx];
      If idx <> c Then
        Selection.InsertRowsBelow(1);
      Run('NextCell');
      ProgressForm.PrBar.StepIt;

    end;
  End;
  BookName := 'Total';
  if WordDoc.Bookmarks.Exists(BookName) then
  begin
    WordDoc.Bookmarks.Item(BookName).Select;
    WordAp.ActiveWindow.Selection.Text := FloatToStr(SumNItems);
  end;
  // WordDoc.Bookmarks.Item(BookName).Range.Text := FloatToStr(SumNItems);
  WordAp.Run('NextCell');
  WordAp.ActiveWindow.Selection.Text := FloatToStr(SumNetWeight);
  WordAp.Run('NextCell');
  WordAp.ActiveWindow.Selection.Text := FloatToStr(SumGrossWeight);
  Text := FormOptions.DirLetters.Text + '\';
  if not DirectoryExists(Text) then
    ForceDirectories(Text);
  WordAp.ChangeFileOpenDirectory(Text);
  DateTimeToString(Sday, 'dd', Now_Date);
  DateTimeToString(SMon, 'mm', Now_Date);
  DateTimeToString(SYear, 'yy', Now_Date);
  i := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].value;
  S := TPath.GetFileNameWithoutExtension(FileNameLetter) + '_' + Sday + SMon +
    SYear + '_' + IntToStr(i) + ExtractFileExt(FileNameLetter);
  mainform.SaveWordDoc(Text + S, WordAp);
  FormOptions.FormStorage1.StoredValues.Values['NumLetter'].value :=
    FormOptions.FormStorage1.StoredValues.Values['NumLetter'].value + 1;

  // print passport
  If TypeSaleProd = 2 Then
  Begin
    ProgressForm.Label1.Caption := 'Вставка выбранной продукции в Excel';
    ProgressForm.PrBar.Position := 0;
    ProgressForm.PrBar.Maximum := 4 + 8 * c - 8;
    ProgressForm.PrBar.step := 1;
    ProgressForm.Show;
    ProgressForm.Update;

    // XL := CreateOLEObject('Excel.Application');
    XL.WorkBooks.Open(ExtractFilePath(Application.ExeName) + AuthorityForm,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, lcid);
    XL.Visible[lcid] := true;
    ProgressForm.PrBar.StepIt;
    // XL.visible:=true;
    DateTimeToString(Sday, 'd', Now_Date);
    DateTimeToString(SMon, 'mmmm', Now_Date);
    DateTimeToString(SYear, 'yyyy', Now_Date);
    XL.Run('SheetSource');
    // XL.Worksheets.Select('Источник');
    ProgressForm.PrBar.StepIt;
    XL.Range['B1', 'B1'].Value2 := FormOptions.FormStorage1.StoredValues.Values
      ['NumAuthority'].value;
    DateTimeToString(S, 'dd.mm.yyyy', Now_Date);
    XL.Range['B2', 'B2'].Value2 := Now_Date; // s;
    XL.Range['B4', 'B4'].Value2 := L_Name;
    XL.Range['B5', 'B5'].Value2 := PassClient.PassSeries;
    XL.Range['B6', 'B6'].Value2 := PassClient.PassNumber;
    XL.Range['B7', 'B7'].Value2 := PassClient.PassWhoGive;
    ProgressForm.PrBar.StepIt;
    XL.Range['B8', 'B8'].Value2 := PassClient.PassDateGive; // SDay;
    XL.Range['B9', 'B9'].Value2 := FormOptions.FormStorage1.StoredValues.Values
      ['NumLetter'].value - 1;
    // intToStr(StrtoInt(FormOptions.NumLetter.Text)-1);
    // ---------
    // XL.Sheets('Доверенность').Select;
    XL.Run('SheetAuthtority');
    ProgressForm.PrBar.StepIt;
    XL.Range['A36', 'A36'].Select;
    StartN := 36;
    NNum := IntToStr(StartN);
    idx := 1;
    ReadToVars;
    XL.Range['A' + NNum, 'A' + NNum].Value2 := IntToStr(idx);
    XL.Range['B' + NNum, 'B' + NNum].Value2 := NameProd;
    XL.Range['D' + NNum, 'D' + NNum].Value2 := 'Вес места:' + Weight_place;
    XL.Range['F' + NNum, 'F' + NNum].Value2 := Packing;
    XL.Range['G' + NNum, 'G' + NNum].Value2 := currency2Str(NItems[idx]);
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
      XL.Range['A' + NNum, 'A' + NNum].Select;
      { -----
        Range("A36:I36").Select
        Selection.Copy
        Range("A37").Select
        Selection.Insert Shift:=xlDown
        ------- }
      // ExcelApplication1.Range['A' + NNum].Insert(xlDown,true);
      XL.Range['A' + NNum, 'A' + NNum].EntireRow.Insert(xlShiftDown,
        EmptyParam);
      ProgressForm.PrBar.StepIt;
      XL.Range['A' + NNum, 'A' + NNum].Value2 := IntToStr(idx);
      ProgressForm.PrBar.StepIt;
      XL.Range['B' + NNum, 'B' + NNum].Value2 := NameProd;
      XL.Range['D' + NNum, 'D' + NNum].Value2 := 'Вес места:' + Weight_place;
      ProgressForm.PrBar.StepIt;
      XL.Range['F' + NNum, 'F' + NNum].Value2 := Packing;
      ProgressForm.PrBar.StepIt;
      XL.Range['G' + NNum, 'G' + NNum].Value2 := currency2Str(NItems[idx]);
    End;
    // XL.CutCopyMode[EmptyParam] := False;
    // XL.ChDir(FormOptions.DirAuthority.Text+'\');
    DateTimeToString(Sday, 'dd', Now);
    DateTimeToString(SMon, 'mm', Now);
    DateTimeToString(SYear, 'yy', Now);
    i := FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].value;
    if not DirectoryExists(FormOptions.DirAuthority.Text) then
      MkDir(FormOptions.DirAuthority.Text);
    S := FormOptions.DirAuthority.Text + '\Доверенность_' + Sday + SMon + SYear
      + '_' + IntToStr(i) + '.xls';
    mainform.SaveExcelDoc(S, XL);
    // XL.visible:=true;
    // end print passport
    FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].value :=
      FormOptions.FormStorage1.StoredValues.Values['NumAuthority'].value + 1;
  End;
  // End;
  // Finally
  ProgressForm.Free;
  WordAp.Visible := true; // .AppShow;
  WordAp.Disconnect;
  WordAp.Free;
  // Worddoc.Windows.Item(0).Activate;
  If TypeSaleProd = 2 Then
    XL.Visible[lcid] := true;
  XL.Disconnect;
  XL.Free;
  /// V := unAssigned;
  // XL := unAssigned;
  // MainForm.BringToFront;
  // End;
end;

procedure TSaleProd.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  // Action:=cafree;
end;

procedure TSaleProd.FormShow(Sender: TObject);
var
  i: integer;
begin
  i := FormOptions.FormStorage1.StoredValues.Values['ListBoxCount'].value;
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
  EdDate.DateTime := Now;
  EdStorage_Date.DateTime := Now;

  idx := 1;
  c := mainform.JvDBUltimGrid1.SelectedRows.Count;
  EdNumLetter.value := FormOptions.FormStorage1.StoredValues.Values
    ['NumLetter'].value;
  EdNumAuthority.value := FormOptions.FormStorage1.StoredValues.Values
    ['NumAuthority'].value;
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
  mainform.CopySelectedToStrings(Values0, ListStr0, mainform.JvDBUltimGrid1);
  { TODO : Заменить на новую функцию !!- - СТРАННОЕ ПОВЕДЕНИЕ НА ДВУХ СТРОКАХ ??? }

  Back.Enabled := False;
  Next.Enabled := true;

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
  netgross: TNetGross;
begin
netgross:=Mul_NetW_ex(EdN_Items.value,Weight_place,EdPacking.Text);

      NetWeight[idx] := netgross.NetWeight;
      EdNet_Weight.Text := FloatToStr(NetWeight[idx]);
    EdGross_weight.Text := FloatToStr(netgross.GrossWeight);

end;

function TSaleProd.Mul_NetW_ex(iNumItems: extended;sWeightPlace,sPacking: string): TNetGross;
var
  w, g: Extended;
begin
  Try
    If TryStrToFloat(sWeightPlace, w) Then
    Begin
      result.NetWeight := w * iNumItems;
    End;
  Except
  End;
  Try
    Kf := StrtoFloat(DataUnit.GetKey('Pack', sPacking, 'Num', 'Packs', true)  );
    if Kf<1 then Exit;
    g := Kf * result.NetWeight;
    result.GrossWeight:= g;
  Except
  End;

end;


procedure TSaleProd.ListPassportsDblClick(Sender: TObject);
begin
  SelectPassport;
  BtnPrintLetter.Enabled := true;
  BtnPrintDoverka.Enabled := true;
end;

procedure TSaleProd.PackChange;
begin { TODO : добавить }
  { Try
    Kf := StrtoFloat(GetNameByKey('Pack', EdPacking.Text, 'Num',Datas.Packs ));//Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num');
    Except
    Kf := 1;
    End; }
end;

procedure TSaleProd.Print_to_WordClick(Sender: TObject);
var
  i: integer;
  qsklad: TFDQuery;
begin
  // процедура печати документов
  TypeSaleProd := (Sender as TBitBtn).Tag;
  // Выбор печати письма или доверенности

  // Try
  (Sender as TBitBtn).Enabled := False;
  ExportToWord;
  For i := 1 To c Do
  Begin
    idx := i;
    ReadToVars;
    If DataUnit.FDSklad.Locate { TODO : заменить на select }
      ('NameProd;Producer;Transport;Fridge;Sklad;Lot;Packing;Weight_place',
      VarArrayOf([NameProd, Producer, Transport, Fridge, Sklad, Lot, Packing,
      Weight_place]), []) Then
    Begin
      N_Items := DataUnit.FDSklad.FieldByName('N_Items').AsFloat - NItems[idx];
      If N_Items = 0 Then // <=0
      begin
        DataUnit.FDSklad.Edit;
        DataUnit.FDSklad.FieldByName('N_Items').AsFloat := 0;
        DataUnit.FDSklad.FieldByName('Net_Weight').AsFloat := 0;
        DataUnit.FDSklad.FieldByName('Gross_weight').AsFloat := 0;
        DataUnit.FDSklad.Post;
      end
       // DataUnit.QSklad.delete     //удаленная продукция остаются в базе, но могу скрываться из списка по умолчанию, с кол-вом 0
      Else
      Begin
        Net_Weight := DataUnit.FDSklad.FieldByName('Net_Weight').AsFloat -
          NetWeight[idx];
        Gross_weight := DataUnit.FDSklad.FieldByName('Gross_weight').AsFloat -
          GrossWeight[idx];
        DataUnit.FDSklad.Edit;
        DataUnit.FDSklad.FieldByName('N_Items').AsFloat := N_Items;
        DataUnit.FDSklad.FieldByName('Net_Weight').AsFloat := Net_Weight;
        DataUnit.FDSklad.FieldByName('Gross_weight').AsFloat := Gross_weight;
        DataUnit.FDSklad.Post;
      End;
      IncomingProd.LogProd2('SaleLog', NameProd, Producer, Transport, Fridge,
        Sklad, SDate, Lot, Weight_place, FloatToStr(NItems[idx]),
        FloatToStr(NetWeight[idx]), { TODO : key violation }
        FloatToStr(GrossWeight[idx]), CurrToStr(Storage_fee[idx]), '', L_Name,
        IntToStr(FormOptions.FormStorage1.StoredValues.Values['NumLetter'].value
        - 1), IntToStr(NewSklad.Color));
    End
    Else
    Begin // error
     Log('Ошибка! Запись не найдена!',3);
      MessageDlg('Ошибка! Запись не найдена!', mtError, [mbOK], 0);
      // DataUnit.Sklad.Cancel;
    End;
  End;
  Close;

  // Except
  // ProgressForm.Free;
  // MessageDlg('Ошибка! Отпуск продукции прерван!', mtError, [mbOK], 0);
  // End;
  // close;
  // Print_to_Word.enabled := True;
end;

procedure TSaleProd.ReadToVars;

// var
// Char,n: currency;
// Per,Nper,nday : Integer;

begin
  Try     { TODO  1 : МОжет лучше заменить список на Record Tsklad ?? }
    NameProd := trim(mainform.Values.Strings.Values
      ['NameProd' + IntToStr(idx)]);
    Producer := trim(mainform.Values.Strings.Values
      ['Producer' + IntToStr(idx)]);
    Transport := trim(mainform.Values.Strings.Values
      ['Transport' + IntToStr(idx)]);
    Fridge := trim(mainform.Values.Strings.Values['Fridge' + IntToStr(idx)]);
    Sklad := trim(mainform.Values.Strings.Values['Sklad' + IntToStr(idx)]);
    SDate := trim(mainform.Values.Strings.Values['Date' + IntToStr(idx)]);
    Lot := trim(mainform.Values.Strings.Values['Lot' + IntToStr(idx)]);
    Packing := trim(mainform.Values.Strings.Values['Packing' + IntToStr(idx)]);
    Weight_place := trim(mainform.Values.Strings.Values['Weight_place' +
      IntToStr(idx)]);

    N_Items := StrtoFloat(trim(mainform.Values.Strings.Values['N_Items' +
      IntToStr(idx)]));
    Net_Weight := StrtoFloat
      (trim(mainform.Values.Strings.Values['Net_Weight' + IntToStr(idx)]));
    Gross_weight :=
      StrtoFloat(trim(mainform.Values.Strings.Values['Gross_weight' +
      IntToStr(idx)]));
    // ++++++++++++++++++++++++++++++++++++++++=
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
      LbPer.Caption:=IntToStr(Per)+' дн.';
      LbChar.Caption:=CurrToStr(Char)+' р.';
      LbDay.Caption:= IntToStr(nday)+' дн.';
      LbTotal.Caption:= CurrToStr(Storage_fee);
    }
    // ++++++++++++++++++++++++++++++++++++++++++
  Except
    // ShowMessage('Ошибка чтения в переменные!!!');
  End;
end;

procedure TSaleProd.ReadValues;
// Вызывается из многих функций, считывает текущию выбранную продукцию
var
  _Char, n: Currency;
  Per, Nper, np, c: integer;
  nday: LongInt;

tfMemTable:   TFDMemTable;
begin
  // Try { TODO 5 : Переделать!!! }
  c := 0;
  NewSklad.ID := StrToInt64(mainform.Values.Strings.Values
    ['ID' + IntToStr(idx)]);
  NewSklad.NameProd := mainform.Values.Strings.Values
    ['NameProd' + IntToStr(idx)];
  NewSklad.Producer := mainform.Values.Strings.Values
    ['Producer' + IntToStr(idx)];
  NewSklad.Transport := mainform.Values.Strings.Values
    ['Transport' + IntToStr(idx)];
  NewSklad.Fridge := mainform.Values.Strings.Values['Fridge' + IntToStr(idx)];
  NewSklad.SkladSvid := mainform.Values.Strings.Values['Sklad' + IntToStr(idx)];
  // EdDate.Date:= StrToDate(Values.Strings.Values['Дата'+IntToStr(idx)]);
  NewSklad.Lot := mainform.Values.Strings.Values['Lot' + IntToStr(idx)];
  NewSklad.Pack := mainform.Values.Strings.Values['Packing' + IntToStr(idx)];
  // NewSklad.Color := strtoint(mainform.Values.Strings.Values['Color' + IntToStr(idx)]);
  TryStrToInt(mainform.Values.Strings.Values['Color' + IntToStr(idx)], c);
  if c<1 then c:=clWhite;

  NewSklad.Color := c;
  NewSklad.WeightPlace := mainform.Values.Strings.Values
    ['Weight_place' + IntToStr(idx)];
  NewSklad.Comment := mainform.Values.Strings.Values['Comment' + IntToStr(idx)];
  SStorage_Date := DateToStr(Storage_Dates[idx]);
  // Storage_Dates[idx]:=StrToDate(Values.Strings.Values['Дата отпуска'+IntToStr(idx)]);
  NewSklad.StorageDate :=
    StrToDate(mainform.Values.Strings.Values['Date' + IntToStr(idx)]);
  LbAllItems.Caption := mainform.Values.Strings.Values
    ['N_Items' + IntToStr(idx)];
  TryStrToFloat(mainform.Values.Strings.Values['N_Items' + IntToStr(idx)],
    N_ItemsMax);

//      N_Items := StrtoFloat(trim(mainform.Values.Strings.Values['N_Items' +
//      IntToStr(idx)]));
    NetWeight[idx] := StrtoFloat
      (trim(mainform.Values.Strings.Values['Net_Weight' + IntToStr(idx)]));
    GrossWeight[idx] :=
      StrtoFloat(trim(mainform.Values.Strings.Values['Gross_weight' +
      IntToStr(idx)]));

  Net_Weight := (NetWeight[idx]);
  Gross_weight := (GrossWeight[idx]);
  N_Items := (NItems[idx]);
  NewSklad.NetWeight := Net_Weight;
  NewSklad.GrossWeight := Gross_weight;
  NewSklad.NumPlaces := N_Items;

  NameProd := NewSklad.NameProd;
  Producer := NewSklad.Producer;
  Transport := NewSklad.Transport;
  Fridge := NewSklad.Fridge;
  Sklad := NewSklad.SkladSvid;
  SDate := DateToStr(NewSklad.StorageDate);
  Lot := NewSklad.Lot;
  Packing := NewSklad.Pack;
  Weight_place := NewSklad.WeightPlace;
  N_Items := NewSklad.NumPlaces;
  Net_Weight := NewSklad.NetWeight;
  Gross_weight := NewSklad.GrossWeight;
  Comment := NewSklad.Comment;
  sColor := NewSklad.Color;

  EdNameProd.Text := NameProd;
  EdProducer.Text := Producer;
  EdTransport.Text := Transport;
  EdFridge.Text := Fridge;
  EdSklad.Text := Sklad;

  EdDate.Date := NewSklad.StorageDate;
  EdLot.Text := Lot;
  EdPacking.Text := Packing;
  EdWeight_place.Text := Weight_place;
  EdN_Items.value := N_Items;
  EdN_Items.MaxValue := N_ItemsMax;
  EdN_Items.MinValue := N_ItemsMin;
  EdNet_Weight.Text := FloatToStr(Net_Weight);
  EdGross_weight.Text := FloatToStr(Gross_weight);
  EdComment.Text := Comment;

  // ***************************************

  nday := DaysBetween(Storage_Dates[idx], StrToDateTime(SDate)) + 1;
  Nper := 0;
  np := 0;
  Storage_fee[idx] := 0;
   if DataUnit.FindKey('Fridge',EdFridge.Text,'Fridges')<1 then

  //If Not Datas.ADOFridges.Locate('Fridge', EdFridge.Text, [loCaseInsensitive])
   { TODO : Locate заменить }
   // Datas.ADOFridges.AppendRecord([EdFridge.Text, EdSklad.Text]);
    DataUnit.AddKey('Fridge,Sklad',AnsiQuotedStr(EdFridge.Text,'"')+','+AnsiQuotedStr(EdSklad.Text,'"'),'Fridges');
   tfMemTable:= TFDMemTable.create(nil);
  tfMemTable := DataUnit.QueryRecordset2(
    'Fridge, Sklad, Periods, Charges', 'FridgesView',
    'Fridge=''' + Fridge + '''');
  //  DataUnit.AddKey()
  LbFridge.Visible := (tfMemTable.RecordCount < 1);
  // LbFridge.Visible := (Datas.ADOPeriods.RecordCount < 1);
  if (tfMemTable.RecordCount > 0) then
  begin
    // Datas.ADOPeriods.FindFirst;
    tfMemTable.First;
    Repeat
      inc(np);
      // Per := Datas.ADOPeriods.FieldByName('Periods').AsInteger;
      // _Char := Datas.ADOPeriods.FieldByName('Charges').AsCurrency;
      Per := tfMemTable.FieldByName('Periods').value;
      _Char := tfMemTable.FieldByName('Charges').value;
      Nper := Nper + Per;
      If Nper > nday Then
        Break;
      Storage_fee[idx] := Storage_fee[idx] +
        (Per * _Char * (Gross_weight) / 1000);
      tfMemTable.Next;
    Until Not(tfMemTable.BOF or tfMemTable.EOF);
    If Nper > nday Then
      n := nday - (Nper - Per)
    Else
      n := nday - Nper;
    Storage_fee[idx] := Storage_fee[idx] + (n * _Char * (Gross_weight) / 1000);
  end;
  If LbFridge.Visible Then
  Begin
    LbPer.Caption := 'нет';
    LbChar.Caption := 'нет';
    LbDay.Caption := IntToStr(nday) + ' дн.';
    LbTotal.Caption := '0 р.';
  End
  Else
  Begin
    LbPer.Caption := IntToStr(Per) + ' дн. (' + IntToStr(np) + ')';
    LbChar.Caption := CurrToStr(_Char) + ' р.';
    LbDay.Caption := IntToStr(nday) + ' дн.';
    LbTotal.Caption := FormatCurr('# ##0.00', Storage_fee[idx]) + ' р.';
  End;
  Datas.fdPeriods.Filtered := False;
  // ***************************************
  { Except
    ShowMessage('Ошибка чтения из массива!!!');
    end; }
   tfMemTable.free;
end;

procedure TSaleProd.Summ_ItemsNet;
var
  i: integer;
  SumItems, SumNet: real;
begin
  //
  SumItems := 0;
  SumNet := 0;
  For i := 1 To c Do { Iterate }
  Begin
    SumItems := SumItems + NItems[i];
    SumNet := SumNet + NetWeight[i];
  End; { for }
  LbSumItems.Caption := FloatToStr(SumItems);
  LbSumNet_Weight.Caption := FloatToStr(SumNet);
end;

End.
