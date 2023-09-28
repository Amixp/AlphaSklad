Unit FormPassportsUnit;

Interface

Uses
  db,

  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics, data.Win.ADODB,
  Controls,
  Forms,
  Dialogs,
  StdCtrls, UnitSklad1,
  Buttons,
  ExtCtrls, DataUnit1, JvComponent, JvFormPlacement, JvComponentBase,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

{
  Type
  TClient = Record
  ID: integer;
  Surname,
  Name,
  Patronymic: String[255];
  PassSeries,
  PassNumber: String[50];
  PassWhoGive: String[255];
  PassDateGive: TDateTime;
  Firm: String[255];
  Address: String;
  Phone: String[100];
  Comment: String[255];
  Color: TColor;
  End;
  Type
  TDocPath = Record
  Name, Path: String;
  NumberDoc: integer;
  End;
  Type
  TFormFont = Record
  Color: TColor;
  Name: String;
  Size: integer;
  End;
  Type
  TOptions = Record
  Letters,
  Authority,
  Reports: TDocPath;
  DropDownCount: integer;
  MainFormFont, StartPageFont: TFormFont;
  FillBackgr: Boolean;
  ShowIndicator: boolean;
  SmallIcons: Boolean;
  ShowLog: Boolean;
  ColorBeginPage: TColor;
  ShowBackground: Boolean;
  ShowLogo, ShowLogoBack: Boolean;
  End;
  Type
  TSelectedSum = Record
  SelSumRecords, SelSumNumPlaces: integer;
  SelSumNetWeight, SelSumGrossWeight: Extended;
  SelSumRecordsIncom, SelSumNumPlacesIncom: integer;
  SelSumNetWeightIncom, SelSumGrossWeightIncom: Extended;
  SelSumRecordsSale, SelSumNumPlacesSale: integer;
  SelSumNetWeightSale, SelSumGrossWeightSale: Extended;
  SelSumStorageFee: Currency;
  SelSumRecordsClients: integer;
  End;
  Type
  TPack = Record
  ID: integer;
  TypePack: String[50];
  Index: Extended;
  End;
  Type
  TPeriod = Record
  ID: integer;
  Fridge: String[255];
  NumPeriod: integer;
  Period: integer;
  Rate: Currency;
  End;
}
type
  TFormPassports = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BtnAddClient: TBitBtn;
    BitBtn4: TBitBtn;
    ChFilter: TCheckBox;
    EdComment: TEdit;
    EdFirm: TEdit;
    EdName: TEdit;
    EdPhone: TEdit;
    EdSurname: TEdit;
    FormPlacement1: TjvFormStorage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    ListPassports: TJvDBUltimGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnAddClientClick(Sender: TObject);
    procedure BtnDelClient(Sender: TObject);
    procedure EdSurnameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListPassportsDblClick(Sender: TObject);
    procedure SelectPassport;
    procedure SetFilterSelected(FTable: TADOTable; StrFilter: String);
    procedure BitBtn4Click(Sender: TObject);
  private
    NewClient: TClient;
    procedure AddClient;
    procedure BtnAddClick(Sender: TObject);
    procedure ClientToVar;
  end;

Var
  FormPassports: TFormPassports;

Implementation

Uses

  FormOptions1, UnitClientForm;

{$R *.dfm}

{
  ******************************** TFormPassports ********************************
}
procedure TFormPassports.BitBtn1Click(Sender: TObject);
begin
  SelectPassport;
  Close;
end;

procedure TFormPassports.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPassports.BtnAddClientClick(Sender: TObject);
begin
  // formoptions.PageControl1.ActivePageIndex := 4;
  // FormOptions.ShowModal;
  // formoptions.PageControl1.ActivePageIndex := 0;
  ClientForm := TClientForm.Create(self);
  ClientForm.Caption := '����� ������';
  if ClientForm.ShowModal = mrOK then
  begin
    with PassClient do
    begin
      Surname := ClientForm.EdLastName.Text;
      Name := ClientForm.EdName.Text;
      Patronymic := ClientForm.EdSurname.Text;
      PassSeries := ClientForm.EdPassSeries.Text;
      PassNumber := ClientForm.EdPassNumber.Text;
      PassWhoGive := ClientForm.EdPassWhoGive.Text;
      PassDateGive := ClientForm.EdDate.Date;
      Firm := ClientForm.EdFirm.Text;
      Address := ClientForm.EdAddr.Text;
      Phone := ClientForm.EdPhone.Text;
      Comment := ClientForm.EdComment.Text;
    end;
    try
      DataUnit.FDPassports.Append;
      with DataUnit.FDPassports, PassClient do
      begin
        FieldByName('�������').AsString := Surname;
        FieldByName('���').AsString := Name;
        FieldByName('��������').AsString := Patronymic;
        FieldByName('�����').AsString := PassSeries;
        FieldByName('�����').AsString := PassNumber;
        FieldByName('��� �����').AsString := PassWhoGive;
        FieldByName('���� ������').AsDateTime :=
          PassDateGive;
        FieldByName('�����').AsString := Firm;
        FieldByName('�����').AsString := Address;
        FieldByName('�������').AsString := Phone;
        FieldByName('����������').AsString := Comment;
        Post;
      end;
    except
    end;
  End;
  ClientForm.Free;
end;

procedure TFormPassports.BtnDelClient(Sender: TObject);
begin
  If MessageDlg('������� ���������� �������?', mtConfirmation, [mbOK, mbCancel],
    0) In [mrOK] Then
    DataUnit.FDPassports.delete;

end;

procedure TFormPassports.EdSurnameChange(Sender: TObject);
var
  F: string;
begin
  F := '';
  If Trim(EdSurname.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[�������] like ' + AnsiQuotedStr('%' + Trim(EdSurname.Text) +
      '%', Quote1);
  End;
  If Trim(EdName.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[���] like ' + AnsiQuotedStr('%' + Trim(EdName.Text) +
      '%', Quote1);
  End;
  If Trim(EdPhone.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[�������] like ' + AnsiQuotedStr('%' + Trim(EdPhone.Text) +
      '%', Quote1);
  End;
  If Trim(EdFirm.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[�����] like ' + AnsiQuotedStr('%' + Trim(EdFirm.Text) +
      '%', Quote1);
  End;
  If Trim(EdComment.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[����������] like ' + AnsiQuotedStr('%' + Trim(EdComment.Text) +
      '%', Quote1);
  End;
  Try
    DataUnit.FDPassports.Filter := F;
    DataUnit.FDPassports.Filtered := ChFilter.Checked;
    DataUnit.FDPassports.Refresh;
    // ListPassports.Refresh;
  Except
  End;
end;

procedure TFormPassports.FormCreate(Sender: TObject);
begin
  DataUnit.FDPassports.Filtered := False;
end;

procedure TFormPassports.ListPassportsDblClick(Sender: TObject);
begin
  SelectPassport;
  Close;
end;

procedure TFormPassports.SelectPassport;
var
  S: string;
begin
  With ListPassports.DataSource.DataSet Do
  Begin
    PassClient.Surname := FieldByName('�������').AsString;
    PassClient.Name := FieldByName('���').AsString;
    PassClient.Patronymic := FieldByName('��������').AsString;
    PassClient.PassSeries := FieldByName('�����').AsString;
    PassClient.PassNumber := FieldByName('�����').AsString;
    PassClient.PassWhoGive := FieldByName('��� �����').AsString;
    S := FieldByName('���� ������').AsString;
    If S <> '' Then
      PassClient.PassDateGive := StrToDate(S);
    PassClient.Firm := FieldByName('�����').AsString;
    PassClient.Address := FieldByName('�����').AsString;
    PassClient.Phone := FieldByName('�������').AsString;
    PassClient.Comment := FieldByName('����������').AsString;
  End;
  S := '�������;���;��������;�����;�����;��� �����;���� ������;�����;�����;�������;����������';
  With DataUnit.FDPassports Do
  Begin
    Locate(S, VarArrayOf([PassClient.Surname, PassClient.Name,
      PassClient.Patronymic, PassClient.PassSeries, PassClient.PassNumber,
      PassClient.PassWhoGive, PassClient.PassDateGive, PassClient.Firm,
      PassClient.Address, PassClient.Phone, PassClient.Comment]), []);
  End;
end;

procedure TFormPassports.SetFilterSelected(FTable: TADOTable;
  StrFilter: String);
begin
  { try }
  FTable.Filtered := False;
  FTable.FilterOptions := [foNoPartialCompare];
  FTable.Filter := StrFilter;
  FTable.Filtered := True;
  // FTable.refresh;
  { except
    end; }
end;

procedure TFormPassports.BitBtn4Click(Sender: TObject);
begin
  ClientForm := TClientForm.Create(self);
  ClientForm.Caption := '�������������� ������ �������';
  { With ListPassports Do
    Begin
    PassClient.Surname := FocusedNode.Strings[ColumnByFieldName('�������').Index];
    PassClient.Name := FocusedNode.Strings[ColumnByFieldName('���').Index];
    PassClient.Patronymic := FocusedNode.Strings[ColumnByFieldName('��������').Index];
    PassClient.PassSeries := FocusedNode.Strings[ColumnByFieldName('�����').Index];
    PassClient.PassNumber := FocusedNode.Strings[ColumnByFieldName('�����').Index];
    PassClient.PassWhoGive := FocusedNode.Strings[ColumnByFieldName('��� �����').Index];
    s := FocusedNode.Strings[ColumnByFieldName('���� ������').Index];
    If s <> '' Then
    PassClient.PassDateGive := StrToDate(s);
    PassClient.Firm := FocusedNode.Strings[ColumnByFieldName('�����').Index];
    PassClient.Address := FocusedNode.Strings[ColumnByFieldName('�����').Index];
    PassClient.Phone := FocusedNode.Strings[ColumnByFieldName('�������').Index];
    PassClient.Comment := FocusedNode.Strings[ColumnByFieldName('����������').Index];
    End;
    s := '�������;���;��������;�����;�����;��� �����;���� ������;�����;�����;�������;����������';
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
      Surname := ClientForm.EdLastName.Text;
      Name := ClientForm.EdName.Text;
      Patronymic := ClientForm.EdSurname.Text;
      PassSeries := ClientForm.EdPassSeries.Text;
      PassNumber := ClientForm.EdPassNumber.Text;
      PassWhoGive := ClientForm.EdPassWhoGive.Text;
      PassDateGive := ClientForm.EdDate.Date;
      Firm := ClientForm.EdFirm.Text;
      Address := ClientForm.EdAddr.Text;
      Phone := ClientForm.EdPhone.Text;
      Comment := ClientForm.EdComment.Text;
    end;
    with DataUnit.FDPassports, PassClient do
    begin
      FieldByName('�������').AsString := Surname;
      FieldByName('���').AsString := Name;
      FieldByName('��������').AsString := Patronymic;
      FieldByName('�����').AsString := PassSeries;
      FieldByName('�����').AsString := PassNumber;
      FieldByName('��� �����').AsString := PassWhoGive;
      FieldByName('���� ������').AsDateTime :=
        PassDateGive;
      FieldByName('�����').AsString := Firm;
      FieldByName('�����').AsString := Address;
      FieldByName('�������').AsString := Phone;
      FieldByName('����������').AsString := Comment;
      Post;
    end;

  end
  else
    DataUnit.FDPassports.Cancel;
  ClientForm.Free;
end;

Procedure TFormPassports.AddClient;
Begin
  // *****************
  DataUnit.FDCommand.CommandText.Text := 'INSERT INTO [Passports] ' +
    '( �������, ���, ��������, �����, �����, [��� �����], [���� ������], ' +
    '�����, �����, �������, ����������, Color)' +
    ' VALUES (:Surname, :Name, :Patronymic, :PassSeries, ' +
    ':PassNumber, :PassWhoGive, :PassDateGive, :Firm, :Address, ' +
    ':Phone, :Comment, :Color)';
  With DataUnit.FDCommand.Params Do
  Begin
    With NewClient Do
    Begin
      ParamByName('Surname').Value := Surname;
      ParamByName('Name').Value := Name;
      ParamByName('Patronymic').Value := Patronymic;
      ParamByName('PassSeries').Value := PassSeries;
      ParamByName('PassNumber').Value := PassNumber;
      ParamByName('PassWhoGive').Value := PassWhoGive;
      If PassDateGive = -700000 Then
        ParamByName('PassDateGive').Value := Null
      Else
        ParamByName('PassDateGive').Value := PassDateGive;
      ParamByName('Firm').Value := Firm;
      ParamByName('Address').Value := Address;
      ParamByName('Phone').Value := Phone;
      ParamByName('Comment').Value := Comment;
      ParamByName('Color').Value := Color;
    End; (* with *)
  End; (* with *)
  DataUnit.FDCommand.Execute;
  DataUnit.FDPassports.Refresh;
  // *****************
End;

Procedure TFormPassports.ClientToVar;
Begin
  With NewClient Do
  Begin
    Surname := ClientForm.EdLastName.Text;
    Name := ClientForm.EdName.Text;
    Patronymic := ClientForm.EdSurname.Text;
    PassSeries := ClientForm.EdPassSeries.Text;
    PassNumber := ClientForm.EdPassNumber.Text;
    PassWhoGive := ClientForm.EdPassWhoGive.Text;
    PassDateGive := ClientForm.EdDate.Date;
    Firm := ClientForm.EdFirm.Text;
    Address := ClientForm.EdAddr.Text;
    Phone := ClientForm.EdPhone.Text;
    Comment := ClientForm.EdComment.Text;
    Color := 0; // ClientForm.edColor.ColorValue;
  End; (* with *)
End;

Procedure TFormPassports.BtnAddClick(Sender: TObject);
Begin
  ClientToVar;
  AddClient;
  // MainForm.ClientsList.Refresh;
End;

End.
