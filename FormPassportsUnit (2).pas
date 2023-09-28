Unit FormPassportsUnit;

Interface

Uses
  db,
  dbtables,
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,        data.Win.ADODB,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  ExtCtrls, Data1,  JvComponent, JvFormPlacement, JvComponentBase,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

Type
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
  end;

Var
  FormPassports: TFormPassports;

Implementation

Uses
  UnitSklad1,
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
//  formoptions.PageControl1.ActivePageIndex := 4;
 // FormOptions.ShowModal;
  //formoptions.PageControl1.ActivePageIndex := 0;
 ClientForm:=TClientForm.Create(self);
 ClientForm.Caption:='����� ������';
 if ClientForm.ShowModal=mrOK then
 begin
 with  PassClient  do
begin
 Surname:= ClientForm.EdLastName.Text;
 Name:= ClientForm.EdName.Text;
 Patronymic:= ClientForm.EdSurName.Text;
 PassSeries:= ClientForm.EdPassSeries.Text;
 PassNumber:= ClientForm.EdPassNumber.Text;
 PassWhoGive:= ClientForm.EdPassWhoGive.Text;
 PassDateGive:= ClientForm.EdDate.Date;
 Firm:= ClientForm.EdFirm.Text;
 Address:= ClientForm.EdAddr.Text;
 Phone:= ClientForm.EdPhone.Text;
 Comment:= ClientForm.EdComment.Text;
end;
try
      DataUnit.ADOPassports.Append;
with  PassClient  do
begin
      DataUnit.ADOPassports.FieldByName('�������').AsString := Surname;
      DataUnit.ADOPassports.FieldByName('���').AsString := Name;
      DataUnit.ADOPassports.FieldByName('��������').AsString := Patronymic;
      DataUnit.ADOPassports.FieldByName('�����').AsString := PassSeries;
      DataUnit.ADOPassports.FieldByName('�����').AsString := PassNumber;
      DataUnit.ADOPassports.FieldByName('��� �����').AsString := PassWhoGive;
      DataUnit.ADOPassports.FieldByName('���� ������').AsDateTime := PassDateGive;
      DataUnit.ADOPassports.FieldByName('�����').AsString := Firm ;
      DataUnit.ADOPassports.FieldByName('�����').AsString := Address;
      DataUnit.ADOPassports.FieldByName('�������').AsString := Phone;
      DataUnit.ADOPassports.FieldByName('����������').AsString := Comment;
      DataUnit.ADOPassports.Post;
 end;
 except
 end;
 End;
 ClientForm.Free;
end;

procedure TFormPassports.BtnDelClient(Sender: TObject);
begin
 If MessageDlg('������� ���������� �������?', mtConfirmation, [mbOK, mbCancel], 0) In [mrOK] Then
    DataUnit.ADOPassports.delete;

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
    F := F + '[�������]=' + QuotedStr(Trim(EdSurname.Text) + '*');
  End;
  If Trim(EdName.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[���]=' + QuotedStr(Trim(EdName.Text) + '*');
  End;
  If Trim(EdPhone.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[�������]=' + QuotedStr(Trim(EdPhone.Text) + '*');
  End;
  If Trim(EdFirm.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[�����]=' + QuotedStr(Trim(EdFirm.Text) + '*');
  End;
  If Trim(EdComment.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[����������]=' + QuotedStr(Trim(EdComment.Text) + '*');
  End;
  Try
    DataUnit.ADOPassports.Filter := F;
    DataUnit.ADOPassports.Filtered := ChFilter.Checked;
    DataUnit.ADOPassports.Refresh;
    //   ListPassports.Refresh;
  Except
  End;
end;

procedure TFormPassports.FormCreate(Sender: TObject);
begin
  DataUnit.ADOPassports.Filtered := False;
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
    PassClient.Surname :=  FieldByName('�������').AsString;
    PassClient.Name := FieldByName('���').AsString;
    PassClient.Patronymic := FieldByName('��������').AsString;
    PassClient.PassSeries := FieldByName('�����').AsString;
    PassClient.PassNumber := FieldByName('�����').AsString;
    PassClient.PassWhoGive := FieldByName('��� �����').AsString;
    s := FieldByName('���� ������').AsString;
    If s <> '' Then
      PassClient.PassDateGive := StrToDate(s);
    PassClient.Firm := FieldByName('�����').AsString;
    PassClient.Address := FieldByName('�����').AsString;
    PassClient.Phone := FieldByName('�������').AsString;
    PassClient.Comment := FieldByName('����������').AsString;
  End;
  s := '�������;���;��������;�����;�����;��� �����;���� ������;�����;�����;�������;����������';
  With DataUnit.ADOPassports Do
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
        PassClient.Comment]), []);
    {	PassClient.Surname:=FieldByName('�������').Asstring;
     PassClient.Name:=FieldByName('���').Asstring;
     PassClient.Patronymic:=FieldByName('��������').Asstring;
     PassClient.PassSeries:=FieldByName('�����').Asstring;
     PassClient.PassNumber:=FieldByName('�����').Asstring;
     PassClient.PassWhoGive:=FieldByName('��� �����').Asstring;
     PassClient.PassDateGive:=FieldByName('�����').Asstring;
     PassClient.Address:=FieldByName('�����').Asstring;
     PassClient.Phone:=FieldByName('�������').Asstring;
     PassClient.Comment:=FieldByName('����������').Asstring;
               }
  End; { with }
end;

procedure TFormPassports.SetFilterSelected(FTable: TADOTable; StrFilter: String);
begin
  {try }
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
 ClientForm:=TClientForm.Create(self);
 ClientForm.Caption:='�������������� ������ �������';
{  With ListPassports Do
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
        PassClient.Comment]), []);  }
        SelectPassport;
       DataUnit.ADOPassports.Edit;
 //end;
 with  PassClient  do
begin
 ClientForm.EdLastName.Text:=Surname;
 ClientForm.EdName.Text:=Name;
 ClientForm.EdSurName.Text:=Patronymic;
 ClientForm.EdPassSeries.Text:=PassSeries;
 ClientForm.EdPassNumber.Text:=PassNumber;
 ClientForm.EdPassWhoGive.Text:=PassWhoGive;
 ClientForm.EdDate.Date:=PassDateGive;
 ClientForm.EdFirm.Text:=Firm;
 ClientForm.EdAddr.Text:=Address;
 ClientForm.EdPhone.Text:=Phone;
 ClientForm.EdComment.Text:=Comment;
end;
if ClientForm.ShowModal=mrOK then
 begin
 with  PassClient  do
begin
 Surname:= ClientForm.EdLastName.Text;
 Name:= ClientForm.EdName.Text;
 Patronymic:= ClientForm.EdSurName.Text;
 PassSeries:= ClientForm.EdPassSeries.Text;
 PassNumber:= ClientForm.EdPassNumber.Text;
 PassWhoGive:= ClientForm.EdPassWhoGive.Text;
 PassDateGive:= ClientForm.EdDate.Date;
 Firm:= ClientForm.EdFirm.Text;
 Address:= ClientForm.EdAddr.Text;
 Phone:= ClientForm.EdPhone.Text;
 Comment:= ClientForm.EdComment.Text;
end;
 with  PassClient  do
begin
      DataUnit.ADOPassports.FieldByName('�������').AsString := Surname;
      DataUnit.ADOPassports.FieldByName('���').AsString := Name;
      DataUnit.ADOPassports.FieldByName('��������').AsString := Patronymic;
      DataUnit.ADOPassports.FieldByName('�����').AsString := PassSeries;
      DataUnit.ADOPassports.FieldByName('�����').AsString := PassNumber;
      DataUnit.ADOPassports.FieldByName('��� �����').AsString := PassWhoGive;
      DataUnit.ADOPassports.FieldByName('���� ������').AsDateTime := PassDateGive;
      DataUnit.ADOPassports.FieldByName('�����').AsString := Firm ;
      DataUnit.ADOPassports.FieldByName('�����').AsString := Address;
      DataUnit.ADOPassports.FieldByName('�������').AsString := Phone;
      DataUnit.ADOPassports.FieldByName('����������').AsString := Comment;
      DataUnit.ADOPassports.Post;
 end;

end
else
 DataUnit.ADOPassports.Cancel;
 ClientForm.Free;
end;

End.

