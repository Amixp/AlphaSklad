Unit EditForm1;

Interface

uses
  Forms, data.Win.ADODB, SysUtils, ComCtrls, UnitService, Controls, ExtCtrls,
  Graphics, Classes, JvStringHolder, StdCtrls, Mask, JvExMask, JvSpin,
  JvColorCombo, JvExStdCtrls, JvCombobox, Buttons, Variants;

{ Windows, Messages Classes,  Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,  Mask, ComCtrls,
  DBCtrls,  Placemnt, DBTables,   DB,RzDlgBtn, RzEdit, RzCmboBx, RzDTP,
  PsLookup, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, RzDBCmbo,
  ToolEdit, RxLookup, StrHlder, TFlatComboBoxUnit,RxMemDS, TFlatButtonUnit,
  TFlatCheckBoxUnit, TFlatEditUnit, TimerLst, IncomingUnit, wwdblook,
  wwdbedit, Wwdbspin, wwdbdatetimepicker, RXDBCtrl, wwSpeedButton,
  wwDBNavigator, wwclearpanel, CurrEdit, ESBPCSEdit, ESBPCSNumEdit,
  acEdit, Spin;
}
Type
  TEditProd = class(TForm)
    BtnCancel: TBitBtn;
    BtnOk: TBitBtn;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Str: TjvStrHolder;
    Values: TjvStrHolder;
    EdTransport: TJvComboBox;
    EdProducer: TJvComboBox;
    EdNameProd: TJvComboBox;
    EdFridge: TJvComboBox;
    EdSklad: TJvComboBox;
    EdDate: TDateTimePicker;
    EdColor: TJvColorComboBox;
    EdLot: TJvComboBox;
    EdPacking: TJvComboBox;
    EdWeight_place: TJvComboBox;
    EdN_Items: TJvSpinEdit;
    EdNet_Weight: TEdit;
    EdGross_weight: TEdit;
    EdComment: TEdit;
    procedure AddFields;
    procedure ChFilterClick(Sender: TObject);
    procedure EdNet_WeightChange(Sender: TObject);
    procedure EdN_ItemsChange(Sender: TObject);
    procedure EdPackingChange(Sender: TObject);
    procedure EdWeight_placeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    procedure Mul_NetW;
    procedure ReadNums;
    procedure AddRec(Tbl: TADOTable; Key, Vls: array of TVarRec);
 //   function GetNameByKey(KeyField, Key, field2: string;
    //  Tbl: TADOTable): string;
    procedure AddRec2(sTableName, Key, Vls: string);
  end;

Var
  EditProd: TEditProd;
  RecNum: integer;

  // NameProd,Producer,Transport,Fridge,Sklad,Lot,Packing,Weight_place: string;
  // N_Items,Net_Weight,Gross_weight,Kf: Extended;
Implementation

uses
  UnitSklad1, DataUnit1, FormOptions1, Datas1, IncomingUnit;

{$R *.dfm}

{
  ********************************** TEditProd ***********************************
}
procedure TEditProd.AddFields;
begin
  { NameProd,Producer,Transport,Fridge,Sklad,SDate,Lot,Packing,Weight_place: string;
    N_Items,Net_Weight,Gross_weight,Kf: Extended;
    if NameProd<>Datas.NameProds.Lookup('NameProd',VarArrayOf([NameProd]),'NameProd') then
    Datas.NameProds.AppendRecord([NameProd]); }
  ReadNums;
  //____
  With Datas Do
  Begin
    // if not ADONameProds.FindKey([NameProd]) then
    Try
      // AddRec(ADONameProds, [NameProd], [NameProd, Sklad]);
      AddRec2('NameProds', 'NameProd', NameProd + ',' + Sklad);
    Except
    End;
    // if not Producers.FindKey([Producer]) then
    Try
      AddRec2('Producers', 'Producer', Producer+','+ Sklad);
    Except
    End;
    // if not Transports.FindKey([Transport]) then
    Try
      AddRec2('Transports', 'Transport', Transport+', '+Sklad);
    Except
    End;
    // if not Fridges.FindKey([Fridge]) then
    Try
      AddRec2('Fridges', 'Fridge', Fridge + ','+ Sklad);
    Except
    End;
    // if not Sklads.FindKey([Sklad]) then
    Try
      AddRec2('Sklads', 'Sklad',Sklad);
    Except
    End;
    // if not Lots.FindKey([Lot]) then
    Try
      AddRec2('Lots', 'Lot', Lot+', '+Sklad);
    Except
    End;
    // if not Weight_places.FindKey([Weight_place]) then
    Try
      AddRec2('Weight_places', 'Weight_place', Weight_place);
    Except
    End;
  End;
  //________________


end;

procedure TEditProd.AddRec2(sTableName: string; Key, Vls: string);
var
  sRowName, sValues, s: string;

begin
  //sTableName := Tbl.TableName;

  // sRowName := GetVarsStr(Key);
  // sValues := GetVarsStr(Vls);
  if DataUnit.FindKey(Key, Vls, sTableName) = -1 then
    // TODO : если запись не найдена, то добавить
    DataUnit.AddKey(Key, Vls, sTableName);
end;


procedure TEditProd.AddRec(Tbl: TADOTable; Key, Vls: array of TVarRec);
Var
  RS: _Recordset;
  STypeID: String;
  sRowName, sValues, sTableName, s: string;
  I: integer;
begin
  exit;
  sTableName := Tbl.TableName;
  { TODO : не работает getvars!!! }
  sRowName := GetVarsStr(Key);
  sValues := GetVarsStr(Vls);
  if not DataUnit.FindKey(sRowName, sValues, sTableName) < 0 then
  begin
    {DataUnit.ADOCommand1.CommandText := 'INSERT INTO ' + sTableName + ' (' +
      sRowName + ') VALUES (' + sValues + ')'; { TODO : проверить!!!! }

  {  DataUnit.ADOCommand1.Execute;  }
    /// / DataUnit.ADOCommand1.CommandText := 'select ID, Name from '+sTableName+' WHERE Name='+sValues;
    /// RS := DataUnit.ADOCommand1.Execute;
    /// TypeID := RS.Fields[0].Value;
    /// STypeID := IntToStr(TypeID);
    // ------------------------------

  end;
end;

{ procedure TEditProd.AddFields;
  begin
  ReadNums;
  With Datas Do
  Begin
  //  if not NameProds.FindKey([NameProd]) then
  Try
  NameProds.AppendRecord([NameProd, Sklad]);
  Except
  End;
  //  if not Producers.FindKey([Producer]) then
  Try
  Producers.AppendRecord([Producer, Sklad]);
  Except
  End;
  //  if not Transports.FindKey([Transport]) then
  Try
  Transports.AppendRecord([Transport, Sklad]);
  Except
  End;
  //  if not Fridges.FindKey([Fridge]) then
  Try
  Fridges.AppendRecord([Fridge, Sklad]);
  Except
  End;
  //  if not Sklads.FindKey([Sklad]) then
  Try
  Sklads.AppendRecord([Sklad]);
  Except
  End;
  //  if not Lots.FindKey([Lot]) then
  Try
  Lots.AppendRecord([Lot, Sklad]);
  Except
  End;
  //  if not Weight_places.FindKey([Weight_place]) then
  Try
  Weight_places.AppendRecord([Weight_place]);
  Except
  End;
  End;

  end; }

procedure TEditProd.ChFilterClick(Sender: TObject);
var
  F: string;
begin
  F := '';
  ReadNums;
  If NameProd <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'NameProd=' + AnsiQuotedStr(NameProd, Quote1);
  End;
  If Producer <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Producer=' + AnsiQuotedStr(Producer, Quote1);
  End;
  If Transport <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Transport=' + AnsiQuotedStr(Transport, Quote1);
  End;
  If Fridge <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Fridge=' + AnsiQuotedStr(Fridge, Quote1);
  End;
  If Sklad <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Sklad=' + AnsiQuotedStr(Sklad, Quote1);
  End;
  If Lot <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Lot=' + AnsiQuotedStr(Lot, Quote1);
  End;
  If Packing <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Packing=' + AnsiQuotedStr(Packing, Quote1);
  End;
  If Weight_place <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Weight_place=' + AnsiQuotedStr(Weight_place, Quote1);
  End;
  DataUnit.fdSklad.Filter := F;
  DataUnit.fdSklad.Filtered := MainForm.ChFilterSklad.Checked;
end;

procedure TEditProd.EdNet_WeightChange(Sender: TObject);
begin
  If EdNet_Weight.Text <> '' Then
    Mul_NetW;
end;

procedure TEditProd.EdN_ItemsChange(Sender: TObject);
begin
  If EdN_Items.Text <> '' Then
    Mul_NetW;
end;

procedure TEditProd.EdPackingChange(Sender: TObject);
var
keyvl: Variant;
begin
  If EdPacking.Text <> '' Then
  Begin
    Try
      keyvl:=DataUnit.GetKey('Pack',EdPacking.Text,'Num','Packs');
      if keyvl<1 then
          Kf:=1
      else
      Kf := keyvl; // Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num');

    Except
      Kf := 1;
    End;
    Mul_NetW;
  End;
end;

procedure TEditProd.EdWeight_placeChange(Sender: TObject);
var
  s: string;
begin
  s := EdWeight_place.Text;
  If Pos('.', s) > 0 Then
  Begin
    If FormatSettings.DecimalSeparator <> '.' Then
      s[Pos('.', s)] := FormatSettings.DecimalSeparator;
  End
  Else If Pos(',', s) > 0 Then
    If FormatSettings.DecimalSeparator <> ',' Then
      s[Pos(',', s)] := FormatSettings.DecimalSeparator;
  EdWeight_place.Text := s;

  If EdWeight_place.Text <> '' Then
    Mul_NetW;
end;

procedure TEditProd.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  // Action:=caHide;
end;

procedure TEditProd.FormShow(Sender: TObject);
var
  I: integer;
begin
  I := FormOptions.FormStorage1.StoredValues.Values['ListBoxCount'].Value;
  EdNameProd.DropDownCount := I;
  EdProducer.DropDownCount := I;
  EdTransport.DropDownCount := I;
  EdFridge.DropDownCount := I;
  EdSklad.DropDownCount := I;
  EdLot.DropDownCount := I;
  EdPacking.DropDownCount := I;
  EdWeight_place.DropDownCount := I;
with  DataUnit.FDSklad do
begin
  DataUnit.fdSklad.DisableControls;
  NameProd := FieldByName('NameProd').AsString;
  Producer := FieldByName('Producer').AsString;
  Transport := FieldByName('Transport').AsString;
  Fridge := FieldByName('Fridge').AsString;
  Sklad := FieldByName('Sklad').AsString;
  SDate := FieldByName('Date').AsString;
  Lot := FieldByName('Lot').AsString;
  Packing := FieldByName('Packing').AsString;
  Weight_place := FieldByName('Weight_place').AsString;
  N_Items := FieldByName('N_Items').AsFloat;
  Net_Weight := FieldByName('Net_Weight').AsFloat;
  Gross_weight := FieldByName('Gross_weight').AsFloat;
  Comment := FieldByName('Comment').AsString;
  EdColor.ColorValue := FieldByName('Color').AsInteger;
  If FieldByName('Color').IsNull Then
    EdColor.ColorValue := clWhite;
end;
  EdNameProd.Text := NameProd;
  EdProducer.Text := Producer;
  EdTransport.Text := Transport;
  EdFridge.Text := Fridge;
  EdSklad.Text := Sklad;
  EdDate.Date := StrToDate(SDate); //
  EdLot.Text := Lot;
  EdPacking.Text := Packing;
  EdWeight_place.Text := Weight_place;
  EdN_Items.Text := floattostr(N_Items);
  EdNet_Weight.Text := floattostr(Net_Weight);
  EdGross_weight.Text := floattostr(Gross_weight);
  EdComment.Text := Comment;
  DataUnit.FDSklad.EnableControls;
end;

procedure TEditProd.Mul_NetW;
var
  w, g, _N_Items, _Net_Weight: Extended;
  _Weight_place: string;
begin
  Try
    _Weight_place := EdWeight_place.Text;
    _N_Items := EdN_Items.Value;
    // _Net_Weight := strtofloat(EdNet_Weight.text);
    if not TryStrToFloat(EdNet_Weight.Text, _Net_Weight) then
      exit;
    If (_Weight_place <> '') And (_Weight_place <> 'нф') Then
    Begin
      w := StrtoFloat(_Weight_place);
      _Net_Weight := w * _N_Items;
      If StrtoFloat(EdNet_Weight.Text) <> _Net_Weight Then
        EdNet_Weight.Text := floattostr(_Net_Weight);
    End;

    Kf := StrtoFloat(DataUnit.GetNameByKey('Pack', EdPacking.Text, 'Num', 'Packs')
      ); // Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num'); //EdPacking.DataSource.DataSet.FieldByName('Num').AsFloat;
    g := Kf * _Net_Weight;
    EdGross_weight.Text := floattostr(g);
  Except
  End;
end;


procedure TEditProd.ReadNums;
begin
  // try
  NameProd := Trim(EdNameProd.Text);
  Producer := Trim(EdProducer.Text);
  Transport := Trim(EdTransport.Text);
  Fridge := Trim(EdFridge.Text);
  Sklad := Trim(EdSklad.Text);
  Lot := Trim(EdLot.Text);
  Packing := Trim(EdPacking.Text);
  Weight_place := Trim(EdWeight_place.Text);
  N_Items := EdN_Items.Value;
  Net_Weight := StrtoFloat(EdNet_Weight.Text);
  Gross_weight := StrtoFloat(EdGross_weight.Text);

end;

procedure TEditProd.RzDialogButtons1ClickCancel(Sender: TObject);
begin
  DataUnit.fdSklad.Cancel;
end;

procedure TEditProd.RzDialogButtons1ClickOk(Sender: TObject);
begin
  Try
  with DataUnit.FDSklad do
  begin
    Edit;
    FieldByName('NameProd').AsString := EdNameProd.Text;
    FieldByName('Producer').AsString := EdProducer.Text;
    FieldByName('Transport').AsString := EdTransport.Text;
    FieldByName('Fridge').AsString := EdFridge.Text;
    FieldByName('Sklad').AsString := EdSklad.Text;
    FieldByName('Date').AsDateTime := EdDate.Date;
    { TODO : добавляет время к дате!! }
    FieldByName('Lot').AsString := EdLot.Text;
    FieldByName('Packing').AsString := EdPacking.Text;
    FieldByName('Weight_place').AsString := EdWeight_place.Text;
    FieldByName('N_Items').AsFloat := EdN_Items.Value;
    FieldByName('Net_Weight').AsFloat :=
      StrtoFloat(EdNet_Weight.Text);
    FieldByName('Gross_weight').AsFloat :=
      StrtoFloat(EdGross_weight.Text);
    FieldByName('Comment').AsString := EdComment.Text;
    If EdColor.ColorValue = clWhite Then
      FieldByName('Color').Clear
    Else
      FieldByName('Color').AsInteger :=
        ColorToRGB(EdColor.ColorValue);
    Post;
  end;
  Except
    DataUnit.FDSklad.Cancel;
  End;
  AddFields;
end;

End.
