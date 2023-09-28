Unit UnitSklad1;

Interface

Uses DB,    data.Win.ADODB,
  dbtables,
  StrUtils,
  Windows,
  Forms,
  Variants,
  SysUtils,
  Dialogs,
  wordxp,
  Menus,
  JvStringGrid,
  StdCtrls,
  Controls,
  ExtCtrls,

  ComCtrls,
  Classes,
  excelxp,
  StdActns,
  ImgList,
  ActnList,
  Graphics,
  comobj,
  DBCtrls,

  JvStringHolder,
  JvComponent,
  JvFormPlacement, JvComponentBase, ToolWin, ActnMan, ActnCtrls,
  XPStyleActnCtrls, XPMan, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, System.Actions;

Type
  TClient = record
    Surname: string;
    Name: string;
    Patronymic: string;
    PassSeries: string;
    PassNumber: string;
    PassWhoGive: string;
    PassDateGive: TDateTime;
    Firm: string;
    Address: string;
    Phone: string;
    Comment: string;
  end;

const
 RowCount: integer=9;
Type
  TMainForm = class(TForm)
    AcAqua: TAction;
    AcBlue: TAction;
    AcFuchsia: TAction;
    AcLime: TAction;
    AcRed: TAction;
    ActionList1: TActionList;
    AcWhite: TAction;
    AcYellow: TAction;
    ChFilterClient: TCheckBox;
    ChFilterSklad: TCheckBox;
    ChLogIncomingFilter: TCheckBox;
    ChSaleFilter: TCheckBox;
    ColorSelect1: TColorSelect;
    EdColorClient: TComboBoxEx;
    EdColorLogIncomingFilter: TComboBoxEx;
    EdColorSaleFilter: TComboBoxEx;
    EdColorSklad: TComboBoxEx;
    EdComment1: TEdit;
    EdCommentClient: TEdit;
    EdDate1: TEdit;
    EdDateLogIncomingFilter: TEdit;
    EdDateSaleFilter: TEdit;
    EdFirmClient: TEdit;
    EdFridge1: TEdit;
    EdFridgeLogIncomingFilter: TEdit;
    EdFridgeSaleFilter: TEdit;
    EdGross_weight1: TEdit;
    EdGross_weightLogIncomingFilter: TEdit;
    EdGross_weightSaleFilter: TEdit;
    EdLogIncomingComments: TEdit;
    EdLot1: TEdit;
    EdLotLogIncomingFilter: TEdit;
    EdLotSaleFilter: TEdit;
    EdNameClient: TEdit;
    EdNameProd1: TEdit;
    EdNet_weight1: TEdit;
    EdNet_weightLogIncomingFilter: TEdit;
    EdNet_weightSaleFilter: TEdit;
    EdNumLetterLogSaleFilter: TEdit;
    EdN_Items1: TEdit;
    EdN_ItemsLogIncomingFilter: TEdit;
    EdN_ItemsSaleFilter: TEdit;
    EdPhoneClient: TEdit;
    EdProdLogIncomingFilter: TEdit;
    EdProdSaleFilter: TEdit;
    EdProducer1: TEdit;
    EdProducerLogIncomingFilter: TEdit;
    EdProducerSaleFilter: TEdit;
    EdSirNameSaleFilter: TEdit;
    EdSklad1: TEdit;
    EdSkladLogIncomingFilter: TEdit;
    EdSkladSaleFilter: TEdit;
    EdSurnameClient: TEdit;
    EdTransport1: TEdit;
    EdTransportLogIncomingFilter: TEdit;
    EdTransportSaleFilter: TEdit;
    Excel1: TMenuItem;
    FilterClients: TTabSheet;
    FilterIncomingLog: TTabSheet;
    FilterSaleLog: TTabSheet;
    FilterSklad: TTabSheet;
    FormPlacement1: TjvFormStorage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LbNumRecordsIncoming: TStaticText;
    LbNumRecordsSale: TStaticText;
    LbNumRecordsSklad: TStaticText;
    LbSelSumItems: TStaticText;
    LbSelSumNet: TStaticText;
    LbSelSumNum: TStaticText;
    LbSelSumWeight: TStaticText;
    LbSumGross_WeightIncoming: TStaticText;
    LbSumGross_WeightSale: TStaticText;
    LbSumGross_WeightSklad: TStaticText;
    LbSumNet_WeightIncoming: TStaticText;
    LbSumNet_WeightSale: TStaticText;
    LbSumNet_WeightSklad: TStaticText;
    LbSumN_ItemsIncoming: TStaticText;
    LbSumN_ItemsSale: TStaticText;
    LbSumN_ItemsSklad: TStaticText;
    LbSum_Storage_fee: TStaticText;
    ListStr: TjvStrHolder;
    MOptions: TMenuItem;
    N1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N2: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    PageControl1: TPageControl;
    PageFilters: TPageControl;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    RxMainMenu1: TMainMenu;
    RxPopupMenu1: TPopupMenu;
    StaticText1: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText2: TStaticText;
    StaticText20: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText25: TStaticText;
    StaticText27: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText4: TStaticText;
    StaticText6: TStaticText;
    StaticText9: TStaticText;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Values: TjvStrHolder;
    xcel1: TMenuItem;
    XPManifest1: TXPManifest;
    ActionManager1: TActionManager;
    ActionToolBar2: TActionToolBar;
    AcAddProd: TAction;
    AcSelProd: TAction;
    AcPrint: TAction;
    AcViewProd: TAction;
    AcSaveChanges: TAction;
    AcOptions: TAction;
    Action7: TAction;
    Action8: TAction;
    AcExit: TAction;
    AcImportFromExcel: TAction;
    AcImportFromPath: TAction;
    AcExportToExcel: TAction;
    AcInfo: TAction;
    AcAbout: TAction;
    ImageList2: TImageList;
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBUltimGrid2: TJvDBUltimGrid;
    JvDBUltimGrid3: TJvDBUltimGrid;
    JvDBUltimGrid4: TJvDBUltimGrid;
    procedure AcAquaExecute(Sender: TObject);
    procedure AcBlueExecute(Sender: TObject);
    procedure AcFuchsiaExecute(Sender: TObject);
    procedure AcLimeExecute(Sender: TObject);
    procedure AcRedExecute(Sender: TObject);
    procedure AcWhiteExecute(Sender: TObject);
    procedure AcYellowExecute(Sender: TObject);
    procedure Agent1Click(Sender: TObject; Const CharacterID: WideString;
      Button, Shift, x, y: Smallint);
    procedure Agent1DblClick(Sender: TObject; Const CharacterID: WideString;
      Button, Shift, x, y: Smallint);
    procedure BtnIncomingProd(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSaleProd(Sender: TObject);
    procedure BtnSaveDB(Sender: TObject);
    procedure BtnViewProd(Sender: TObject);
    procedure ClearFieldColor(FTable: TADOTable);
    procedure ClientFilter(Sender: TObject);
    procedure ColorSelect1Accept(Sender: TObject);
    procedure CopySelectedToStrings(jValuesStr, jListStr: TjvStrHolder;
      jDBGrid: TDBGrid);
    procedure DelDocsExels;
    procedure dxDBGrid10Click(Sender: TObject);

    procedure ExportToExcel(jStringTemp: TJvStringGrid);
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IncomingLogFilter(Sender: TObject);
    procedure MOptionsClick(Sender: TObject);
    procedure MyGridDraw(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure N16Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    function ReadColorFromList(EdColorList: TComboBoxEx): Integer;
    procedure SaleLogFilter(Sender: TObject);
    procedure SaveExcelDoc(DocFileName: String; DocApp: TExcelApplication);
    procedure SaveWordDoc(DocFileName: String; DocApp: TWordApplication);
    procedure SetFieldColor(FTable: TADOTable; FColor: Integer);
    procedure SetIncomingSumm;
    procedure SetSaleSumm;
    procedure SetSkladSumm;
    function ShiftDown: Boolean;
    procedure SkladFilter(Sender: TObject);
    function ViewTable: TADOTable;
    procedure ViewSelectSum;
    procedure ClearEditText(Contrl: TControl);
    procedure Read2Strings(IDStrings, StrStrings: TStrings; Cmd: TQuery;
      IDFieldName, StrFieldName, StrTableName, StrFilter: String);
    procedure ReadNames(ComboEdit: TCustomCombo; Cmd: TADOQuery;
      StrFieldName, StrTableName, StrFilter: String);
    procedure AcImportFromPathExecute(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBUltimGrid1DblClick(Sender: TObject);
    procedure JvDBUltimGridEditMode(Sender: TObject);
    procedure JvDBUltimGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBUltimGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBUltimGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SaveSelectedToStrings(jDBGrid: TJvDBUltimGrid; List: TStrings);
    function CopySelectedToStrings1(cssdbgrid: TDBGrid): string;
    procedure LocaleFieldsNames(jDBGrid: TJvDBUltimGrid);
    function GetFldCaption(SFld: string): string;
  private
    procedure DrawGridTitle(ColIndex: Integer);

  end;

Var
GridTitles : array of Boolean; //массив признаков нарисованных заголовков
  t, nm, s, L_Name: String;
  c, l, n, idx: Integer;
  PassClient: TClient;
  MainForm: TMainForm;
  DocForm: String;

const

  SkladForm: String = 'Склад.xls';
  JournalIncForm: String = 'Журнал_поставок.xls';
  // Журнал_расходов.xls Журнал_поставок.xls
  JournalSaleForm: String = 'Журнал_расходов.xls';
  JournalClientsForm: String = 'Журнал_клиентов.xls';
  AuthorityForm: String = 'Доверенность.xls';
  LetterForm: String = 'Письмо.doc';
  LetterForm_Dov: String = 'Письмо_по_дов.doc';
  ViewFormDoc: String = 'Осмотр.doc';
  FldsNames: array [0 .. 16] of string = ('№', 'Наименование продукции',
    'Изготовитель', 'Транспорт', 'Холодильник', 'Скл. св.', 'Партия',
    'Род упаковки', 'Дата', 'Вес места', 'Дата отпуска', 'Кол-во мест',
    'Вес нетто', 'Вес брутто', 'Примечание', 'Дата', '');
  Flds: array [0 .. 16] of string = ('id', 'NameProd', 'Producer', 'Transport',
    'Fridge', 'Sklad', 'Lot', 'Packing', 'Date', 'Weight_place',
    'SStorage_Date', 'N_Items', 'Net_Weight', 'Gross_weight', 'Comment',
    'DateTime', '');

Implementation

Uses IncomingUnit,
  Data1,
  FormOptions1,
  SaleProd1,
  EditForm1,
  Progressform1,
  SysInfoForm1,
  UnitViewForm,
  SavedFormUnit,
  UnitListDocFiles,
  UnitDBImport;

{$R *.dfm}

{
  ********************************** TMainForm ***********************************
}
procedure TMainForm.AcAquaExecute(Sender: TObject);
begin
  SetFieldColor(ViewTable, clAqua);
end;

procedure TMainForm.AcBlueExecute(Sender: TObject);
begin
  SetFieldColor(ViewTable, clBlue);
end;

procedure TMainForm.AcFuchsiaExecute(Sender: TObject);
begin
  SetFieldColor(ViewTable, clFuchsia);
end;

procedure TMainForm.AcLimeExecute(Sender: TObject);
begin
  SetFieldColor(ViewTable, clLime);
end;

procedure TMainForm.AcRedExecute(Sender: TObject);
begin
  SetFieldColor(ViewTable, clRed);
end;

procedure TMainForm.AcWhiteExecute(Sender: TObject);
begin
  ClearFieldColor(ViewTable);
end;

procedure TMainForm.AcYellowExecute(Sender: TObject);
begin
  SetFieldColor(ViewTable, clYellow);
end;

procedure TMainForm.Agent1Click(Sender: TObject; Const CharacterID: WideString;
  Button, Shift, x, y: Smallint);
begin
  // Agent1.Characters.Item[CharacterID].Speak('Что надо?','');
end;

procedure TMainForm.Agent1DblClick(Sender: TObject;
  Const CharacterID: WideString; Button, Shift, x, y: Smallint);
begin
  // Agent1.Characters.Item[CharacterID].Speak('Отстань!','');
end;

procedure TMainForm.BtnIncomingProd(Sender: TObject);
begin
  IncomingProd := TIncomingProd.Create(self);
  IncomingProd.ShowModal;
  IncomingProd.Free;
end;

procedure TMainForm.BtnPrintClick(Sender: TObject);
var
  x, y, c, i, n, v: Integer;
begin
 c :=0;
  Values.Strings.Clear;
  ListStr.Strings.Clear;
  Case PageControl1.TabIndex Of
    0:
      Begin
        c := JvDBUltimGrid1.SelectedRows.Count;
        If c <> 0 Then
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid1)
        Else
        Begin
          JvDBUltimGrid1.SelectAll;
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid1);
          c := JvDBUltimGrid1.SelectedRows.Count;
        End;
        n := JvDBUltimGrid1.Columns.Count - 1;
        DocForm := SkladForm;
      End;
    1:
      Begin
        c := JvDBUltimGrid2.SelectedRows.Count;
        If c <> 0 Then
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid2)
        Else
        Begin
          JvDBUltimGrid2.SelectAll;
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid2);
          c := JvDBUltimGrid2.SelectedRows.Count;
        End;
        n := JvDBUltimGrid2.Columns.Count - 1;
        DocForm := JournalIncForm;
      End;
    2:
      Begin
        c := JvDBUltimGrid3.SelectedRows.Count;
        If c <> 0 Then
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid3)
        Else
        Begin
          JvDBUltimGrid3.SelectAll;
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid3);
          c := JvDBUltimGrid3.SelectedRows.Count;
        End;
        n := JvDBUltimGrid3.Columns.Count - 1;
        DocForm := JournalSaleForm;
      End;
    3:
      Begin
        c := JvDBUltimGrid4.SelectedRows.Count;
        If c <> 0 Then
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid4)
        Else
        Begin
          JvDBUltimGrid4.SelectAll;
          CopySelectedToStrings(Values, ListStr, JvDBUltimGrid4);
          c := JvDBUltimGrid4.SelectedRows.Count;
        End;
        n := JvDBUltimGrid4.Columns.Count - 1;
        DocForm := JournalClientsForm;
      End;
  End;
  If c = 0 Then
  Begin
    If MessageDlg('Распечатать все записи?', mtConfirmation, [mbOK, mbCancel],
      0) In [mrCancel] Then
      Abort;
  End;
  FormOptions.StringTemp.ColCount := n;
  nm := ListStr.Strings.Strings[0];
  l := 1;
  x := 0;
  y := 0;
  For v := 0 To n Do
  Begin
    t := '';
    While (nm[l] <> ',') And (l <= Length(nm)) Do
    Begin
      t := t + nm[l];
      inc(l);
    End;
    inc(l);
    If t <> '' Then // временная таблица
      FormOptions.StringTemp.Cells[x, y] := t;
    // SaleProd.Values.Strings.Append(t);
    inc(x);
  End;
  y := 0;
  x := 0;
  For i := 1 To c Do
  Begin
    nm := ListStr.Strings.Strings[i];
    l := 1;
    For v := 0 To n Do
    Begin
      t := '';
      While (nm[l] <> ',') And (l <= Length(nm)) Do
      Begin
        t := t + nm[l];
        inc(l);
      End;
      inc(l);
      FormOptions.StringTemp.Cells[x, y] := t;
      inc(x);
      If x > n Then
      Begin
        x := 0;
        inc(y);
        FormOptions.StringTemp.RowCount := y;
      End;
    End;
  End;
  ExportToExcel(FormOptions.StringTemp);

end;

procedure TMainForm.BtnSaleProd(Sender: TObject);

begin

  if JvDBUltimGrid1.SelectedRows.Count <> JvDBUltimGrid1.SelCount then
    ShowMessage('Коллапс!!! Ошибка кол-ва записей!!!');

  If JvDBUltimGrid1.SelectedRows.Count = 0 Then
    ShowMessage('Выберите хотя бы одну запись!')
  Else
  Begin
    SaleProd := TSaleProd.Create(self);
    SaleProd.ShowModal;
    SaleProd.Free;
  End;
end;

procedure TMainForm.BtnSaveDB(Sender: TObject);
begin
  Try
    FormOptions.FormStorage1.SaveFormPlacement;
  Except
    ShowMessage('Ошибка сохранения настроек программы!');
  End;
  Try
    If DataUnit.Database1.InTransaction Then
      DataUnit.Database1.Commit;
  Except
    ShowMessage('Ошибка сохранения изменений в базе данных!');
  End;
  Try
    If Not DataUnit.Database1.InTransaction Then
      DataUnit.Database1.StartTransaction;
  Except
    ShowMessage('Ошибка начала транзанкции в базе данных!');
  End;

  ListFilesForm.ListDocFiles.Items.Clear;
  // отчистка списка сохраненных документов
end;

procedure TMainForm.BtnViewProd(Sender: TObject);
begin
  If JvDBUltimGrid1.SelectedRows.Count = 0 Then
    ShowMessage('Ничего не выбрано!')
  Else
  Begin
    ViewForm := TViewForm.Create(self);
    ViewForm.ShowModal;
    ViewForm.Free;
  End;
end;

procedure TMainForm.ClearFieldColor(FTable: TADOTable);
begin
  With FTable Do
  Begin
    Edit;
    FieldByName('Color').Clear;
    Post;
  End; { with }
end;

procedure TMainForm.ClientFilter(Sender: TObject);
var
  F: string;
begin
  F := '';
  If Trim(EdSurnameClient.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Фамилия]=' + QuotedStr(Trim(EdSurnameClient.Text) + '*');
  End;
  If Trim(EdNameClient.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Имя]=' + QuotedStr(Trim(EdNameClient.Text) + '*');
  End;
  If Trim(EdPhoneClient.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Телефон]=' + QuotedStr(Trim(EdPhoneClient.Text) + '*');
  End;
  If Trim(EdFirmClient.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Фирма]=' + QuotedStr(Trim(EdFirmClient.Text) + '*');
  End;
  If Trim(EdCommentClient.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Примечание]=' + QuotedStr(Trim(EdCommentClient.Text) + '*');
  End;
  If ReadColorFromList(EdColorClient) <> -1 Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Color]=' + IntToStr(ReadColorFromList(EdColorClient));
  End;
  Try
    DataUnit.ADOPassports.Filter := F;
    DataUnit.ADOPassports.Filtered := ChFilterClient.Checked;
    DataUnit.ADOPassports.Refresh;
  Except
  End;

end;

procedure TMainForm.ColorSelect1Accept(Sender: TObject);
begin
  SetFieldColor(ViewTable, ColorSelect1.Dialog.Color);
end;

procedure TMainForm.SaveSelectedToStrings(jDBGrid: TJvDBUltimGrid;
  List: TStrings);
var
  Current: TBookmark;
  i: Integer;
begin
  // List.Add(GetHeaderTabText);

  jDBGrid.DataSource.DataSet.DisableControls;
  Current := jDBGrid.DataSource.DataSet.Bookmark;
  { save top pos }
  // DataSet.ActiveRecord := 0;
  // if DataSet.DataSource.State <> dsSetKey then
  // DataSet.FActiveRecord := FFirstRecord;
  try
    for i := 0 to jDBGrid.SelCount - 1 do
    begin
      jDBGrid.DataSource.DataSet.Bookmark := jDBGrid.SelectedRows[i];
      // List.Add(GetNodeTabText(Items[Datalink.ActiveRecord]));
    end;
  finally
    jDBGrid.DataSource.DataSet.GotoBookmark(Current);
    jDBGrid.DataSource.DataSet.EnableControls;
  end;

end;

function TMainForm.CopySelectedToStrings1(cssdbgrid: TDBGrid): string;
var
  i, j: Integer;
  s: string;
  // List : TStrings;
begin
  s := '';
  cssdbgrid.DataSource.DataSet.DisableControls;
  for i := 0 to cssdbgrid.Columns.Count - 1 do
  begin // формируем названия колонок
    if (i > 0) then
      s := s + ', ';
    s := s + cssdbgrid.Columns.Items[i].FieldName;
  end;
  result := (s) + #13#10;
  s := '';
  if cssdbgrid.SelectedRows.Count > 0 then
    with cssdbgrid.DataSource.DataSet do
      for i := 0 to cssdbgrid.SelectedRows.Count - 1 do
      begin // заполняем выделенные данные таблицы
        GotoBookmark(pointer(cssdbgrid.SelectedRows.Items[i]));
        for j := 0 to FieldCount - 1 do
        begin
          if (j > 0) then
            s := s + ', ';
          s := s + Fields[j].AsString;
        end;
        result := result + (s) + #13#10;
        s := '';
      end;

  cssdbgrid.DataSource.DataSet.EnableControls;
end;

procedure TMainForm.CopySelectedToStrings(jValuesStr, jListStr: TjvStrHolder;
  jDBGrid: TDBGrid);
var
  v, i: Integer;
begin
  jValuesStr.Strings.Clear; // контейнер для значений всех колонок
  jListStr.Strings.Clear;
  c := jDBGrid.SelectedRows.Count;
  n := jDBGrid.Columns.Count - 1;
  If c = 0 Then
    Exit;
  Try
    jListStr.Strings.Text := CopySelectedToStrings1(jDBGrid);
    nm := jListStr.Strings.Strings[0];
    jValuesStr.CommaText := nm; // список заголовков колонок в строки
    For i := 1 To c Do
    Begin // список ячеек таблицы в строки каждой колонки
      nm := jListStr.Strings.Strings[i];
      l := 1;
      For v := 0 To n Do
      Begin
        t := '';
        While (nm[l] <> ',') And (l <= Length(nm)) Do
        Begin
          t := t + nm[l];
          inc(l);
        End;
        inc(l);
        s := jValuesStr.Strings.Strings[v];
        jValuesStr.Strings.Values[s + IntToStr(i)] := Trim(t);
      End;
    End;
  Except
    ShowMessage('Ошибка чтения выбранной записи!');
  End;
end;

procedure TMainForm.DelDocsExels;
var
i:integer;
 filename: string;
begin
  With ListFilesForm.ListDocFiles.Items Do
  Begin
    For i := 0 To Count - 1 Do { Iterate }
    Begin
      filename := Strings[i];
      If Not DeleteFile(filename) Then
        ShowMessage('Не могу удалить файл: ' + filename);
    End; { for }
  End; { with }
end;

procedure TMainForm.dxDBGrid10Click(Sender: TObject);
begin
  ViewSelectSum;
end;

procedure TMainForm.ExportToExcel(jStringTemp: TJvStringGrid);
var
  SMon, Sday, SYear, Text: string;
  XL, XArr: variant;
  x, y, x1, y1: Integer;

  // col,idx: integer;

begin
  Try
    y1 := jStringTemp.RowCount;
    x1 := jStringTemp.ColCount + 1;
    XArr := VarArrayCreate([0, y1 - 1, 0, x1 - 1], varVariant);
    XL := CreateOLEObject('Excel.Application'); // Создание OLE объекта
    XL.WorkBooks.open(ExtractFilePath(Application.ExeName) + DocForm);
    For y := 0 To y1 - 1 Do
      For x := 0 To x1 - 1 Do
      Begin
        XArr[y, x] := jStringTemp.Cells[x, y];
      End;
    inc(y1);
    XL.Range['A2', CHR(64 + x1) + IntToStr(y1)].Value := XArr;
    { XL.Range['A1',CHR(64+x1)+IntToStr(y1)].select;
      XL.Selection.Font.Name:='Arial';
      XL.Selection.Font.Size:=10;
      XL.Selection.HorizontalAlignment := xlCenter;
      XL.Selection.VerticalAlignment := xlCenter;
      XL.Selection.WrapText := True;
      XL.Selection.Orientation := 0;
      XL.Selection.AddIndent := False;
      XL.Selection.IndentLevel := 0;
      XL.Selection.ShrinkToFit := False;
      XL.Selection.ReadingOrder := xlContext;
      XL.Selection.MergeCells := False;
      XL.Selection.Rows.AutoFit; }
    DateTimeToString(Sday, 'dd', Now);
    DateTimeToString(SMon, 'mm', Now);
    DateTimeToString(SYear, 'yy', Now);
    Text := FormOptions.DirReports.Text + '\' +
      LeftStr(DocForm, Length(DocForm) - 4) + '_' + Sday + SMon + SYear + '_' +
      IntToStr(FormOptions.FormStorage1.StoredValues.Values['NumReports']
      .Value) + '.xls';
  //  SaveExcelDoc(Text, XL);
    { XL.ActiveWorkbook.SaveAs(FormOptions.DirReports.Text+'\'+LeftStr(DocForm,Length(DocForm)-4)+'_'+
      SDay+SMon+SYear+'_'+IntToStr(FormOptions.FormStorage1.StoredValues.Values['NumReports'].Value)+'.xls');
    }
    FormOptions.FormStorage1.StoredValues.Values['NumReports'].Value :=
      FormOptions.FormStorage1.StoredValues.Values['NumReports'].Value + 1;
    // FormOptions.FormStorage1.SaveFormPlacement;

  Finally
    XL.visible := true;
    XL := unAssigned;
  End;

end;

procedure TMainForm.FormClose(Sender: TObject; Var Action: TCloseAction);
var
  a: Integer;
begin
  If FlagChangeDB Then
  Begin
    a := MessageDlg('Сохранить изменения и выйти?', mtConfirmation,
      mbYesNoCancel, 0);
    If a = mrYes Then
    Begin
      Try
        FormOptions.FormStorage1.SaveFormPlacement;
      Except
        ShowMessage('Ошибка сохранения настроек программы!');
      End;
      Try
        If DataUnit.Database1.InTransaction Then
          DataUnit.Database1.Commit;
      Except
        ShowMessage('Ошибка сохранения изменений в базе данных!');
      End;
    End
    Else If a = mrNo Then
      Try
        If ListFilesForm.ListDocFiles.Items.Count > 0 Then
          If MessageDlg('Удалить последние письма и доверенности?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            DelDocsExels;
        If DataUnit.Database1.InTransaction Then
          DataUnit.Database1.Rollback
      Except
        ShowMessage('Ошибка отмены изменений в базе данных!');
      End
    Else If a = mrCancel Then
      Action := caNone
    Else
      Action := caFree;
  End
  Else
    Try
      If DataUnit.Database1.InTransaction Then
        DataUnit.Database1.Commit;
    Except
      ShowMessage('Ошибка сохранения изменений в базе данных!');
    End;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Try
    DataUnit.Database1.StartTransaction;
  Except
    ShowMessage
      ('Ошибка создания транзанкции! Отмены изменений в базе данных не будет!');
  End;
end;

procedure TMainForm.FormShow(Sender: TObject);

begin
  { Agent1.Connected:=true;
    //Agent1.ShowDefaultCharacterProperties;
    Agent1.Characters.Load('my character','merlin.acs');
    //Agent1.AudioOutput.Enabled:=true;
    //Agent1.AudioOutput.SoundEffects:=true;
    //Agent1.CommandsWindow.Visible:=true;
    AgentChar:=Agent1.Characters.Character('my character');
    AgentChar.Name:='Ваш помошник';
    //if FormOptions.Helper.Checked then
    // begin
    AgentChar.Show(0);
    //AgentChar.Visible:=FormOptions.Helper.Checked;
    //AgentChar.Activate(1);
    AgentChar.Play('Greet');
    AgentChar.Speak('Привет','');
    // end; }

  LocaleFieldsNames(JvDBUltimGrid1);
  LocaleFieldsNames(JvDBUltimGrid2);
  LocaleFieldsNames(JvDBUltimGrid3);
  LocaleFieldsNames(JvDBUltimGrid4);
end;

procedure TMainForm.LocaleFieldsNames(jDBGrid: TJvDBUltimGrid);
var
  s: string;
  i: Integer;
begin
  for i := 0 to jDBGrid.Columns.Count - 1 do
  begin
    s := jDBGrid.Columns.Items[i].FieldName;
    jDBGrid.Columns.Items[i].Title.Caption := GetFldCaption(s);
  end;

end;

function TMainForm.GetFldCaption(SFld: string): string;
var
  n: Integer;
begin
  for n := 0 to high(Flds) - 1 do
  begin
    if AnsiCompareText(Flds[n], SFld) = 0 then
      break;
  end;
  if (n) < high(Flds) then
    result := FldsNames[n];
end;

procedure TMainForm.IncomingLogFilter(Sender: TObject);
var
  F: string;
begin
  F := '';
  If Trim(EdProdLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'NameProd=' + QuotedStr(Trim(EdProdLogIncomingFilter.Text) + '*');
  End;
  If Trim(EdProducerLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Producer=' +
      QuotedStr(Trim(EdProducerLogIncomingFilter.Text) + '*');
  End;
  If Trim(EdTransportLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Transport=' +
      QuotedStr(Trim(EdTransportLogIncomingFilter.Text) + '*');
  End;
  If Trim(EdFridgeLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Fridge=' + QuotedStr(Trim(EdFridgeLogIncomingFilter.Text) + '*');
  End;
  If Trim(EdSkladLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Sklad=' + QuotedStr(Trim(EdSkladLogIncomingFilter.Text) + '*');
  End;
  If Trim(EdDateLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Date=' + QuotedStr(Trim(EdDateLogIncomingFilter.Text));
  End;
  If Trim(EdLotLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Lot=' + QuotedStr(Trim(EdLotLogIncomingFilter.Text));
  End;
  If Trim(EdN_ItemsLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'N_Items=' + QuotedStr(Trim(EdN_ItemsLogIncomingFilter.Text));
  End;
  If Trim(EdNet_weightLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Net_weight=' +
      QuotedStr(Trim(EdNet_weightLogIncomingFilter.Text));
  End;
  If Trim(EdGross_weightLogIncomingFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Gross_weight=' +
      QuotedStr(Trim(EdGross_weightLogIncomingFilter.Text));
  End;
  If Trim(EdLogIncomingComments.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Comment=' + QuotedStr(Trim(EdLogIncomingComments.Text) + '*');
  End;
  If ReadColorFromList(EdColorLogIncomingFilter) <> -1 Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Color]=' + IntToStr(ReadColorFromList(EdColorLogIncomingFilter));
  End;
  Try
    DataUnit.ADOIncomingLog.Filter := F;
    DataUnit.ADOIncomingLog.Filtered := ChLogIncomingFilter.Checked;
    DataUnit.ADOIncomingLog.Refresh;
  Except
  End;

end;

procedure TMainForm.MOptionsClick(Sender: TObject);
begin
  FormOptions.PageControl1.ActivePageIndex := 0;
  FormOptions.ShowModal;
  // dxDBGrid1.Refresh;
  JvDBUltimGrid1.Refresh;
end;

procedure TMainForm.DrawGridTitle(ColIndex : Integer);
  var
    //  Titles : array[1..RowCount] of String;
      Titles : array[1..2] of String;
      ARect : TRect; { Собственно область заголовка }
      RH : Integer;  { Высота области заголовка }
      BlankPos : Integer; { Позиция разбиения заголовка }
  begin
   { BlankPos := Pos(' ', Column.Title.Caption);
    if BlankPos <> 0 then begin { Рисуем многострочный заголовок только для тех
                                  колонок, у которых есть пробел в названии.
                                  Заголовки остальных колонки DBGrid
                                  нарисует сам. }
    {  Titles[1] := Copy(Column.Title.Caption, 1, BlankPos-1);
      Titles[2] := Copy(Column.Title.Caption, BlankPos+1,
                   Length(Column.Title.Caption) - BlankPos);
      RH := RectHeight(Rect);
      { В прямоугольнике Rect передаются координаты текущей ячейки,
        область для рисования заголовка можно получить, указывая в качестве
        вертикальной координаты 0. Высота области рисования сейчас
        равна высоте стандартной ячейки DBGrid, как раз на одну строку
        заголовка. }
    {  SetRect(ARect, Rect.Left, 0, Rect.Right, RH);
      InflateRect(ARect, -2, -2); { Поправка на окантовку Titles }
    {  Dec(RH, 2); { Смещение для отступа текста от края по вертикали }
    {  with DBGrid1.Canvas do begin
        Brush.Color := DBGrid1.FixedColor;
        FillRect(ARect); { Залить область заголовка, стерев все, что там
                           нарисовано DBGrid'ом }
        { Рисование первой строки в заголовке }
     {   ARect.Bottom := RH;
        DrawText(Handle, PChar(Titles[1]), -1, ARect, DT_CENTER or DT_SINGLELINE);
        { Рисование второй строки в заголовке, предварительно сместив
        область рисования вниз на размер строки. }
      {  OffsetRect(ARect, 0, RH-2);
        DrawText(Handle, PChar(Titles[2]), -1, ARect,DT_CENTER or DT_SINGLELINE);
      end;
    end;
    GridTitles[ColIndex] := true; //Нарисовали заголовок для этой колонки    }
  end;

procedure TMainForm.MyGridDraw(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   cl: Integer;
  sc: string;
begin
  Try
    sc := (Sender As TDBGrid).DataSource.DataSet.FieldByName
      ('Color').AsString;
    If (sc <> '') and (sc <> '0') Then
    begin
      cl := StrToInt(sc);
      if (gdSelected in State) then
      begin
         TDBGrid(Sender).Canvas.Font.Color:=cl;
         TDBGrid(Sender).Canvas.Brush.Color:= clHighlight;

        TDBGrid(Sender).Canvas.Font.Style := [fsBold];
        { If ColorToRGB((TDBGrid(Sender).Font.Color)) = ColorToRGB(Cl) Then
          TDBGrid(Sender).Canvas.Font.Color := TDBGrid(Sender).font.color;    }
      End
      Else
        { If ColorToRGB(AFont.Color) = ColorToRGB(Cl) Then
          TJvDBUltimGrid(Sender).Canvas.Font.Color := (TJvDBUltimGrid(Sender).HighlightTextColor; }
        If FormOptions.FormStorage1.StoredValues.Values['FillItem']
          .Value = 1 Then        // настройка в опциях - что окрашивать цветом из ячейки
          TDBGrid(Sender).Canvas.Brush.Color := cl
        Else
          TDBGrid(Sender).Canvas.Font.Color := cl;
    end;
    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  Except
  End;
  {
    Try
    ic := (Sender As TdxDBGrid).ColumnByFieldName('Color').Index;
    sc := ANode.Strings[ic];
    If sc = '' Then
    Exit;
    cl := StrToInt(sc);
    If AFocused Or ASelected Then
    Begin
    AFont.Style := [fsBold];
    If ColorToRGB((Sender As TdxDBGrid).HighlightTextColor) = ColorToRGB(Cl) Then
    AFont.Color := (Sender As TdxDBGrid).HighlightColor;
    End
    Else
    If ColorToRGB(AFont.Color) = ColorToRGB(Cl) Then
    AFont.Color := (Sender As TdxDBGrid).HighlightTextColor;
    If formoptions.FormStorage1.StoredValues.Values['FillItem'].Value = 1 Then
    AColor := Cl
    Else
    AFont.Color := Cl;
    Except
    End;
  }
end;

procedure TMainForm.N16Click(Sender: TObject);
begin
  FormDBImport := TFormDBImport.Create(self);
  FormDBImport.ShowModal;
  FormDBImport.Free;

end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
  // acQuickAboutBox1.Execute;

end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  SysInfoForm.ShowModal;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
var
  IdxPg: Integer;

begin
  IdxPg := PageControl1.ActivePageIndex;
  PageFilters.ActivePageIndex := IdxPg;
  // LMDButtonBar1.Sections[0].Items[0].Enabled := (IdxPg = 0);
  // LMDButtonBar1.Sections[0].Items[1].Enabled := (IdxPg = 0);
  // LMDButtonBar1.Sections[0].Items[3].Enabled := (IdxPg = 0);
  // LMDButtonBar1.Sections[0].Items[0].Enabled:=(IdxPg=0);
  Case IdxPg Of { }
    // 0: ;
    1:
      Begin
        // EdDateTimeChange(self);
 if  JvDBUltimGrid2.DataSource.DataSet.Active then
        JvDBUltimGrid2.DataSource.DataSet.Last;
        // dxDBGrid2.GotoLast(true);
      End;
    2:
      Begin
        // EdDateTimeChange(self);
        if  JvDBUltimGrid3.DataSource.DataSet.Active then
        JvDBUltimGrid3.DataSource.DataSet.Last;
        // dxDBGrid3.gotolast(True);
      End;
    // 3: ;
  End; { case }
end;

function TMainForm.ReadColorFromList(EdColorList: TComboBoxEx): Integer;
var
  i: Integer;
  StrColor: string;
begin
  result := -1;
  i := EdColorList.ItemIndex;
  If i = -1 Then
    Exit;

  StrColor := EdColorList.Items.Strings[i];
  If StrColor = 'Красный' Then
    result := clRed;
  If StrColor = 'Зеленый' Then
    result := clLime;
  If StrColor = 'Желтый' Then
    result := clYellow;
  If StrColor = 'Голубой' Then
    result := clAqua;
  If StrColor = 'Синий' Then
    result := clBlue;
  If StrColor = 'Фиолетовый' Then
    result := clFuchsia;

end;

procedure TMainForm.SaleLogFilter(Sender: TObject);
var
  F: string;
begin
  F := '';
  If Trim(EdProdSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'NameProd=' + QuotedStr(Trim(EdProdSaleFilter.Text) + '*');
  End;
  If Trim(EdProducerSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Producer=' + QuotedStr(Trim(EdProducerSaleFilter.Text) + '*');
  End;
  If Trim(EdTransportSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Transport=' + QuotedStr(Trim(EdTransportSaleFilter.Text) + '*');
  End;
  If Trim(EdFridgeSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Fridge=' + QuotedStr(Trim(EdFridgeSaleFilter.Text) + '*');
  End;
  If Trim(EdSkladSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Sklad=' + QuotedStr(Trim(EdSkladSaleFilter.Text) + '*');
  End;
  If Trim(EdDateSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Date=' + QuotedStr(Trim(EdDateSaleFilter.Text));
  End;
  If Trim(EdLotSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Lot=' + QuotedStr(Trim(EdLotSaleFilter.Text));
  End;
  If Trim(EdN_ItemsSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'N_Items=' + QuotedStr(Trim(EdN_ItemsSaleFilter.Text));
  End;
  If Trim(EdNet_weightSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Net_weight=' + QuotedStr(Trim(EdNet_weightSaleFilter.Text));
  End;
  If Trim(EdGross_weightSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Gross_weight=' + QuotedStr(Trim(EdGross_weightSaleFilter.Text));
  End;
  If Trim(EdSirNameSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Name=' + QuotedStr(Trim(EdSirNameSaleFilter.Text) + '*');
  End;
  If Trim(EdNumLetterLogSaleFilter.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'NumLetter=' + QuotedStr(Trim(EdNumLetterLogSaleFilter.Text));
  End;
  If ReadColorFromList(EdColorSaleFilter) <> -1 Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Color]=' + IntToStr(ReadColorFromList(EdColorSaleFilter));
  End;
  Try
    DataUnit.ADOSaleLog.Filter := F;
    DataUnit.ADOSaleLog.Filtered := ChSaleFilter.Checked;
    DataUnit.ADOSaleLog.Refresh;
  Except
  End;
end;

procedure TMainForm.SaveExcelDoc(DocFileName: String; DocApp: TExcelApplication);
var
  s, Text: string;
  procedure SaveApp(sDocFileName: String; DocApp: TExcelApplication);
  begin
   DocApp.ActiveWorkbook.SaveCopyAs(DocFileName,lcid);//, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, lcid);
  end;
begin
  s := ExtractFileName(DocFileName);
  Text := ExtractFilePath(DocFileName);

  If FileExists(DocFileName) Then
  Begin
    SavedForm := TSavedForm.Create(self);
    SavedForm.LbFileName.Caption := s;
    SavedForm.ShowModal;
    If SavedForm.ModalResult = mrYes Then
    Begin
      If DeleteFile(DocFileName) Then
      SaveApp( DocFileName, DocApp)
       Else
        ShowMessage('ОШИБКА! Немогу заменить файл! Возможно он защищен.');
    End
    Else
    Begin
      s := '~' + s;
      If FileExists(Text + s) Then
      Begin
        If DeleteFile(Text + s) Then
        SaveApp( Text + s, DocApp)
         // DocApp.ActiveWorkbook.SaveAs(Text + s, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, lcid)
        Else
          ShowMessage
            ('ОШИБКА! Немогу заменить временный файл! Возможно он защищен.');
      End
      Else
      SaveApp( Text + s, DocApp);
       // DocApp.ActiveWorkbook.SaveAs(Text + s, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, lcid);
    End;
    SavedForm.Free; // закрываем открытую форму
  End
  Else
  SaveApp( DocFileName, DocApp) ;
   // DocApp.ActiveWorkbook.SaveAs(DocFileName, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, emptyparam, lcid);

  ListFilesForm.ListDocFiles.Items.Append(Text + s);
end;

procedure TMainForm.SaveWordDoc(DocFileName: String; DocApp: TWordApplication);
var
  s, Text: string;
   procedure SaveApp(sDocFileName: String; DocApp: TWordApplication);
  begin
   DocApp.ActiveDocument.SaveAs(DocFileName, 0, false, '', false, emptyparam, false, false, true, false, false, emptyparam, false,false,emptyparam,false);
  end;
begin
  s := ExtractFileName(DocFileName);
  Text := ExtractFilePath(DocFileName);
  If FileExists(DocFileName) Then
  Begin
    SavedForm := TSavedForm.Create(self);
    SavedForm.LbFileName.Caption := s;
    SavedForm.ShowModal;
    If SavedForm.ModalResult = mrYes Then
    Begin
      If DeleteFile(DocFileName) Then
      SaveApp( s, DocApp)
        //DocApp.ActiveDocument.SaveAs(s,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam)
      Else
        ShowMessage('ОШИБКА! Немогу заменить файл! Возможно он защищен.');
    End
    Else
    Begin
      s := '~' + s;
      If FileExists(Text + s) Then
      Begin
        If DeleteFile(Text + s) Then
        SaveApp( s, DocApp)
        //DocApp.ActiveDocument.SaveAs(s,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,Emptyparam,EmptyParam,EmptyParam)
             Else
          ShowMessage
            ('ОШИБКА! Немогу заменить временный файл! Возможно он защищен.')
      End
      Else
      SaveApp( s, DocApp) ;
     //   DocApp.ActiveDocument.SaveAs(s,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam) ;
    End;
    SavedForm.Free;
  End
  Else
    SaveApp( s, DocApp) ;
    //    DocApp.ActiveDocument.SaveAs(s,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);

ListFilesForm.ListDocFiles.Items.Append(Text + s);
end;

procedure TMainForm.SetFieldColor(FTable: TADOTable; FColor: Integer);
begin
  With FTable Do
  Begin
    Edit;
    FieldByName('Color').AsInteger := FColor;
    Post;
  End; { with }
end;

procedure TMainForm.SetIncomingSumm;
begin
  LbNumRecordsIncoming.Caption := LogIncomingNum_Records;
  LbSumN_ItemsIncoming.Caption := LogIncomingNum_N_Items;
  LbSumNet_WeightIncoming.Caption := LogIncomingNum_Net_Weight;
  LbSumGross_WeightIncoming.Caption := LogIncomingNum_Gross_Weight;

end;

procedure TMainForm.SetSaleSumm;
begin
  LbNumRecordsSale.Caption := LogSaleNum_Records;
  LbSumN_ItemsSale.Caption := LogSaleNum_N_Items;
  LbSumNet_WeightSale.Caption := LogSaleNum_Net_Weight;
  LbSumGross_WeightSale.Caption := LogSaleNum_Gross_Weight;
  LbSum_Storage_fee.Caption := LogSaleNum_Storage_fee;
end;

procedure TMainForm.SetSkladSumm;
begin
  try
    LbNumRecordsSklad.Caption := SkladNum_Records;
    LbSumN_ItemsSklad.Caption := SkladNum_N_Items;
    LbSumNet_WeightSklad.Caption := SkladNum_Net_Weight;
    LbSumGross_WeightSklad.Caption := SkladNum_Gross_Weight;
    if SkladNum_N_Items='' then LbSumN_ItemsSklad.Hint := 'ничего'
    else
    LbSumN_ItemsSklad.Hint := FloatToStr(StrToFloat(SkladNum_N_Items) -
      StrToFloat(LogSaleNum_N_Items) - StrToFloat(LogIncomingNum_N_Items));
    LbSumN_ItemsSklad.ShowHint := true;
    if SkladNum_Net_Weight='' then LbSumNet_WeightSklad.Hint := 'ничего'
    else
    LbSumNet_WeightSklad.Hint := FloatToStr(StrToFloat(SkladNum_Net_Weight) -
      StrToFloat(LogSaleNum_Net_Weight) -
      StrToFloat(LogIncomingNum_Net_Weight));
    LbSumNet_WeightSklad.ShowHint := true;
    if SkladNum_Gross_Weight='' then LbSumGross_WeightSklad.Hint := 'ничего'
    else
    LbSumGross_WeightSklad.Hint := FloatToStr(StrToFloat(SkladNum_Gross_Weight)
      - StrToFloat(LogSaleNum_Gross_Weight) -
      StrToFloat(LogIncomingNum_Gross_Weight));
    LbSumGross_WeightSklad.ShowHint := true;
  except
  end;
end;

function TMainForm.ShiftDown: Boolean;
var
  State: TKeyboardState;
begin
  GetKeyboardState(State);
  result := ((State[vk_Shift] And 128) <> 0);
end;

procedure TMainForm.SkladFilter(Sender: TObject);
var
  F: string;
begin
  F := '';
  If Trim(EdNameProd1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'NameProd=' + QuotedStr(Trim(EdNameProd1.Text) + '*');
  End;
  If Trim(EdProducer1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Producer=' + QuotedStr(Trim(EdProducer1.Text) + '*');
  End;
  If Trim(EdTransport1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Transport=' + QuotedStr(Trim(EdTransport1.Text) + '*');
  End;
  If Trim(EdFridge1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Fridge=' + QuotedStr(Trim(EdFridge1.Text) + '*');
  End;
  If Trim(EdSklad1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Sklad=' + QuotedStr(Trim(EdSklad1.Text) + '*');
  End;
  If Trim(EdDate1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Date=' + QuotedStr(Trim(EdDate1.Text));
  End;
  If Trim(EdLot1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Lot=' + QuotedStr(Trim(EdLot1.Text) + '*');
  End;
  If Trim(EdN_Items1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'N_Items=' + QuotedStr(Trim(EdN_Items1.Text));
  End;
  If Trim(EdNet_weight1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Net_weight=' + QuotedStr(Trim(EdNet_weight1.Text));
  End;
  If Trim(EdGross_weight1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Gross_weight=' + QuotedStr(Trim(EdGross_weight1.Text));
  End;
  If Trim(EdComment1.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Comment=' + QuotedStr(Trim(EdComment1.Text) + '*');
  End;
  If ReadColorFromList(EdColorSklad) <> -1 Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Color]=' + IntToStr(ReadColorFromList(EdColorSklad));
  End;
  Try
    DataUnit.ADOSklad.Filter := F;
    DataUnit.ADOSklad.Filtered := ChFilterSklad.Checked;
    DataUnit.ADOSklad.Refresh;
    // dxDBGrid1.ClearSelection;
    JvDBUltimGrid1.ClearSelection := true;
    ViewSelectSum;
  Except
  End;

end;

procedure TMainForm.ViewSelectSum;
var
  i, Count: Integer;

  si, sn, sw: Real;
begin
  CopySelectedToStrings(Values, ListStr, JvDBUltimGrid1);
  Count := c;
  si := 0;
  sn := 0;
  sw := 0;
  If c = 0 Then
    Exit;
  Try
    For i := 1 To Count Do { Iterate }
    Begin
      si := si + StrToFloat(Values.Strings.Values['N_Items' + IntToStr(i)]);
      sn := sn + StrToFloat(Values.Strings.Values['Net_weight' + IntToStr(i)]);
      sw := sw + StrToFloat(Values.Strings.Values['Gross_weight' +
        IntToStr(i)]);
    End; { for }
  Finally
    LbSelSumNum.Caption := '(' + IntToStr(Count) + ') ';
    LbSelSumItems.Caption := '(' + FloatToStr(si) + ') ';
    LbSelSumNet.Caption := 'кг. (' + FloatToStr(sn) + ') ';
    LbSelSumWeight.Caption := 'кг. (' + FloatToStr(sw) + ')';
  End;
end;

function TMainForm.ViewTable: TADOTable;
var
  _IdxPg: Integer;
begin
  _IdxPg := PageControl1.ActivePageIndex;
  Case _IdxPg Of { }
    0:
      result := DataUnit.ADOSklad;
    1:
      result := DataUnit.ADOIncomingLog;
    2:
      result := DataUnit.ADOSaleLog;
    3:
      result := DataUnit.ADOPassports;
  End; { case }
end;

Procedure TMainForm.ClearEditText(Contrl: TControl);
Begin
  If (Contrl Is TCustomEdit) Then
    With (Contrl As TCustomEdit) Do
      If Enabled Then
        Clear;
  If (Contrl Is TCustomCombo) Then
    With (Contrl As TCustomCombo) Do
      If Enabled Then
        Clear;
End;

Procedure TMainForm.ReadNames(ComboEdit: TCustomCombo; Cmd: TADOQuery;
  StrFieldName, StrTableName, StrFilter: String);
Var
  // RS: _Recordset;
  i, Count: Integer;
  StrValue, SqlStr, ComboEditText: String;
  // ExItem: TComboExItem;
Begin
  Cmd.Close;
  ComboEdit.Items.BeginUpdate;
  If ComboEdit.ItemIndex > -1 Then
  Begin
    ComboEditText := ComboEdit.Items.Strings[ComboEdit.ItemIndex];
  End;
  ComboEdit.Items.Clear;
  // ComboEdit.Text := '';
  ClearEditText(ComboEdit);
  SqlStr := 'SELECT DISTINCT ' + StrFieldName + ' FROM ' + StrTableName;
  If StrFilter <> '' Then
    SqlStr := SqlStr + ' WHERE ' + StrFilter;
  Cmd.SQL.Text := SqlStr;
  // RS := Cmd.Execute;
  Cmd.open;
  Count := Cmd.RecordCount;
  If Count < 1 Then
    Exit;
  Cmd.First;
  For i := 0 To Count - 1 Do (* Iterate *)
  Begin
    StrValue := VarToStr(Cmd.Fields[0].Value);
    If Trim(StrValue) <> '' Then
    Begin
      ComboEdit.Items.Add(StrValue);
      // ExItem := ComboEdit.ItemsEx.Add;
      // ExItem.Caption := StrValue;
    End;
    Cmd.Next;
  End; (* for *)
  If ComboEditText <> '' Then
    For i := 0 To ComboEdit.Items.Count - 1 Do
    Begin
      If ComboEditText = ComboEdit.Items.Strings[i] Then
      Begin
        ComboEdit.ItemIndex := i;
        break;
      End;
    End;
  ComboEdit.Items.EndUpdate;
  Cmd.Close;
End;

Procedure TMainForm.Read2Strings(IDStrings, StrStrings: TStrings; Cmd: TQuery;
  IDFieldName, StrFieldName, StrTableName, StrFilter: String);
Var
  // RS: _Recordset;
  i, Count: Integer;
  idValue, StrValue, SqlStr: String;
Begin
  IDStrings.Clear;
  StrStrings.Clear;
  SqlStr := 'SELECT DISTINCT ' + IDFieldName + ', ' + StrFieldName + ' FROM ' +
    StrTableName;
  If StrFilter <> '' Then
    SqlStr := SqlStr + ' WHERE ' + StrFilter;
  Cmd.SQL.Text := SqlStr;
  Cmd.ExecSQL;
  Count := Cmd.RecordCount;
  If Count < 1 Then
    Exit;
  Cmd.First;
  For i := 0 To Count - 1 Do (* Iterate *)
  Begin
    idValue := VarToStr(Cmd.Fields[0].Value);
    StrValue := VarToStr(Cmd.Fields[1].Value);
    If Trim(idValue) <> '' Then
    Begin
      IDStrings.Add(idValue);
      StrStrings.Add(StrValue);
    End;
    Cmd.Next;
  End; (* for *)
End;


procedure TMainForm.AcImportFromPathExecute(Sender: TObject);
begin
  FormDBImport := TFormDBImport.Create(self);
  FormDBImport.ShowModal;
  FormDBImport.Free;
end;

procedure TMainForm.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  ViewSelectSum;
end;

procedure TMainForm.JvDBUltimGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  SetSkladSumm;
{  if not GridTitles[Column.Index] then
    DrawGridTitle(Column.Index);  {Если заголовок колонки не нарисован, то нарисовать его.
     Процедура рисования должна определить координаты области заголовка и ее размеры и заново перерисовать эту область.}
  MyGridDraw(Sender, Rect, DataCol, Column, State);
end;

procedure TMainForm.JvDBUltimGrid1DblClick(Sender: TObject);
begin
  If ShiftDown Then
    JvDBUltimGrid1.SelectAll;
  If JvDBUltimGrid1.SelectedRows.Count = 1 Then
  Begin
    EditProd := TEditProd.Create(self);
    EditProd.ShowModal;
    EditProd.Free;
  End;
end;

procedure TMainForm.JvDBUltimGridEditMode(Sender: TObject);
begin
  If ShiftDown Then
    (Sender as TJvDBUltimGrid).SelectAll
  Else
    (Sender as TJvDBUltimGrid).EditorMode := true;
end;

procedure TMainForm.JvDBUltimGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  SetIncomingSumm;
  MyGridDraw(Sender, Rect, DataCol, Column, State);
end;

procedure TMainForm.JvDBUltimGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  SetSaleSumm;
  MyGridDraw(Sender, Rect, DataCol, Column, State);
end;

procedure TMainForm.JvDBUltimGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  MyGridDraw(Sender, Rect, DataCol, Column, State);
end;

End.
