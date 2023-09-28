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
 ClientForm.Caption:='Новый клиент';
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
      DataUnit.ADOPassports.FieldByName('Фамилия').AsString := Surname;
      DataUnit.ADOPassports.FieldByName('Имя').AsString := Name;
      DataUnit.ADOPassports.FieldByName('Отчество').AsString := Patronymic;
      DataUnit.ADOPassports.FieldByName('Серия').AsString := PassSeries;
      DataUnit.ADOPassports.FieldByName('Номер').AsString := PassNumber;
      DataUnit.ADOPassports.FieldByName('Кем выдан').AsString := PassWhoGive;
      DataUnit.ADOPassports.FieldByName('Дата выдачи').AsDateTime := PassDateGive;
      DataUnit.ADOPassports.FieldByName('Фирма').AsString := Firm ;
      DataUnit.ADOPassports.FieldByName('Адрес').AsString := Address;
      DataUnit.ADOPassports.FieldByName('Телефон').AsString := Phone;
      DataUnit.ADOPassports.FieldByName('Примечание').AsString := Comment;
      DataUnit.ADOPassports.Post;
 end;
 except
 end;
 End;
 ClientForm.Free;
end;

procedure TFormPassports.BtnDelClient(Sender: TObject);
begin
 If MessageDlg('Удалить выбранного клиента?', mtConfirmation, [mbOK, mbCancel], 0) In [mrOK] Then
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
    F := F + '[Фамилия]=' + QuotedStr(Trim(EdSurname.Text) + '*');
  End;
  If Trim(EdName.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Имя]=' + QuotedStr(Trim(EdName.Text) + '*');
  End;
  If Trim(EdPhone.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Телефон]=' + QuotedStr(Trim(EdPhone.Text) + '*');
  End;
  If Trim(EdFirm.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Фирма]=' + QuotedStr(Trim(EdFirm.Text) + '*');
  End;
  If Trim(EdComment.Text) <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + '[Примечание]=' + QuotedStr(Trim(EdComment.Text) + '*');
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
    PassClient.Surname :=  FieldByName('Фамилия').AsString;
    PassClient.Name := FieldByName('Имя').AsString;
    PassClient.Patronymic := FieldByName('Отчество').AsString;
    PassClient.PassSeries := FieldByName('Серия').AsString;
    PassClient.PassNumber := FieldByName('Номер').AsString;
    PassClient.PassWhoGive := FieldByName('Кем выдан').AsString;
    s := FieldByName('Дата выдачи').AsString;
    If s <> '' Then
      PassClient.PassDateGive := StrToDate(s);
    PassClient.Firm := FieldByName('Фирма').AsString;
    PassClient.Address := FieldByName('Адрес').AsString;
    PassClient.Phone := FieldByName('Телефон').AsString;
    PassClient.Comment := FieldByName('Примечание').AsString;
  End;
  s := 'Фамилия;Имя;Отчество;Серия;Номер;Кем выдан;Дата выдачи;Фирма;Адрес;Телефон;Примечание';
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
    {	PassClient.Surname:=FieldByName('Фамилия').Asstring;
     PassClient.Name:=FieldByName('Имя').Asstring;
     PassClient.Patronymic:=FieldByName('Отчество').Asstring;
     PassClient.PassSeries:=FieldByName('Серия').Asstring;
     PassClient.PassNumber:=FieldByName('Номер').Asstring;
     PassClient.PassWhoGive:=FieldByName('Кем выдан').Asstring;
     PassClient.PassDateGive:=FieldByName('Фирма').Asstring;
     PassClient.Address:=FieldByName('Адрес').Asstring;
     PassClient.Phone:=FieldByName('Телефон').Asstring;
     PassClient.Comment:=FieldByName('Примечание').Asstring;
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
 ClientForm.Caption:='Редактирование данных клиента';
{  With ListPassports Do
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
      DataUnit.ADOPassports.FieldByName('Фамилия').AsString := Surname;
      DataUnit.ADOPassports.FieldByName('Имя').AsString := Name;
      DataUnit.ADOPassports.FieldByName('Отчество').AsString := Patronymic;
      DataUnit.ADOPassports.FieldByName('Серия').AsString := PassSeries;
      DataUnit.ADOPassports.FieldByName('Номер').AsString := PassNumber;
      DataUnit.ADOPassports.FieldByName('Кем выдан').AsString := PassWhoGive;
      DataUnit.ADOPassports.FieldByName('Дата выдачи').AsDateTime := PassDateGive;
      DataUnit.ADOPassports.FieldByName('Фирма').AsString := Firm ;
      DataUnit.ADOPassports.FieldByName('Адрес').AsString := Address;
      DataUnit.ADOPassports.FieldByName('Телефон').AsString := Phone;
      DataUnit.ADOPassports.FieldByName('Примечание').AsString := Comment;
      DataUnit.ADOPassports.Post;
 end;

end
else
 DataUnit.ADOPassports.Cancel;
 ClientForm.Free;
end;

End.

