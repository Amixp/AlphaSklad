Unit EditForm1;

Interface

Uses Forms,    data.Win.ADODB,
  SysUtils,
  ComCtrls,     UnitService,
  Controls,
  ExtCtrls,     Graphics,
  Classes, DBTables, JvStringHolder, StdCtrls, Mask, JvExMask, JvSpin,
  JvColorCombo, JvExStdCtrls, JvCombobox, Buttons,  Variants;
{  Windows, Messages Classes,  Controls, Forms,
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
    function GetNameByKey(KeyField, key, field2: string;
      tbl: TADOTable): string;
  end;

Var
  EditProd: TEditProd;
  RecNum: integer;
  //  NameProd,Producer,Transport,Fridge,Sklad,Lot,Packing,Weight_place: string;
  //  N_Items,Net_Weight,Gross_weight,Kf: Extended;
Implementation

Uses UnitSklad1,
  Data1,
  FormOptions1,
  Datas1,
 
  IncomingUnit;

{$R *.dfm}

{
********************************** TEditProd ***********************************
}
procedure TEditProd.AddFields;
begin
  {NameProd,Producer,Transport,Fridge,Sklad,SDate,Lot,Packing,Weight_place: string;
    N_Items,Net_Weight,Gross_weight,Kf: Extended;
  if NameProd<>Datas.NameProds.Lookup('NameProd',VarArrayOf([NameProd]),'NameProd') then
    Datas.NameProds.AppendRecord([NameProd]);}
  ReadNums;
  With Datas Do
  Begin
    //  if not NameProds.FindKey([NameProd]) then
    Try
      AddRec(ADONameProds,[NameProd],[NameProd, Sklad]);
    Except
    End;
    //  if not Producers.FindKey([Producer]) then
    Try
      AddRec(ADOProducers,[Producer],[Producer, Sklad]);
    Except
    End;
    //  if not Transports.FindKey([Transport]) then
    Try
      AddRec(ADOTransports,[Transport],[Transport, Sklad]);
    Except
    End;
    //  if not Fridges.FindKey([Fridge]) then
    Try
      AddRec(ADOFridges,[Fridge],[Fridge, Sklad]);
    Except
    End;
    //  if not Sklads.FindKey([Sklad]) then
    Try
      AddRec(ADOSklads,[Sklad],[Sklad]);
    Except
    End;
    //  if not Lots.FindKey([Lot]) then
    Try
      AddRec(ADOLots,[Lot],[Lot, Sklad]);
    Except
    End;
    //  if not Weight_places.FindKey([Weight_place]) then
    Try
      AddRec(ADOWeight_places,[Weight_place],[Weight_place]);
    Except
    End;
  End;

end;

procedure TEditProd.AddRec(Tbl: TADOTable; Key,Vls: array of TVarRec);
  Var
  RS: _Recordset;
  STypeID: String;
sRowName,sValues,sTableName,s: string;
I: Integer;
begin
 sTableName:=Tbl.TableName;

 sRowName:= GetVarsStr(Key);
 sValues:=GetVarsStr(Vls);
if not DataUnit.FindKey(sRowName,sValues,sTableName)<0 then
begin
  DataUnit.ADOCommand1.CommandText := 'INSERT INTO '+ sTableName
    + ' ('+sRowName+') VALUES ('+sValues+')';   { TODO : проверить!!!! }

  DataUnit.ADOCommand1.Execute;
 //// DataUnit.ADOCommand1.CommandText := 'select ID, Name from '+sTableName+' WHERE Name='+sValues;
 /// RS := DataUnit.ADOCommand1.Execute;
 /// TypeID := RS.Fields[0].Value;
 /// STypeID := IntToStr(TypeID);
  //------------------------------

end;
end;

{procedure TEditProd.AddFields;
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

end;  }

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
    F := 'NameProd=' + QuotedStr(NameProd);
  End;
  If Producer <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Producer=' + QuotedStr(Producer);
  End;
  If Transport <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Transport=' + QuotedStr(Transport);
  End;
  If Fridge <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Fridge=' + QuotedStr(Fridge);
  End;
  If Sklad <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Sklad=' + QuotedStr(Sklad);
  End;
  If Lot <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Lot=' + QuotedStr(Lot);
  End;
  If Packing <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Packing=' + QuotedStr(Packing);
  End;
  If Weight_place <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := 'Weight_place=' + QuotedStr(Weight_place);
  End;
  DataUnit.ADOSklad.Filter := F;
  DataUnit.ADOSklad.Filtered := MainForm.ChFilterSklad.Checked;
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
begin
  If EdPacking.Text <> '' Then
  Begin
    Try
      Kf := Datas.ADOPacks.Lookup('Pack', EdPacking.Text, 'Num');
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
  Else
    If Pos(',', s) > 0 Then
      If FormatSettings.DecimalSeparator <> ',' Then
        s[Pos(',', s)] := FormatSettings.DecimalSeparator;
  EdWeight_place.Text := s;

  If EdWeight_place.Text <> '' Then
    Mul_NetW;
end;

procedure TEditProd.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  //Action:=caHide;
end;

procedure TEditProd.FormShow(Sender: TObject);
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

  DataUnit.ADOSklad.DisableControls;
  NameProd := DataUnit.ADOSklad.FieldByName('NameProd').AsString;
  Producer := DataUnit.ADOsklad.FieldByName('Producer').AsString;
  Transport := DataUnit.ADOSklad.FieldByName('Transport').AsString;
  Fridge := DataUnit.ADOSklad.FieldByName('Fridge').AsString;
  Sklad := DataUnit.ADOSklad.FieldByName('Sklad').AsString;
  SDate := DataUnit.ADOSklad.FieldByName('Date').AsString;
  Lot := DataUnit.ADOSklad.FieldByName('Lot').AsString;
  Packing := DataUnit.ADOSklad.FieldByName('Packing').AsString;
  Weight_place := DataUnit.ADOSklad.FieldByName('Weight_place').AsString;
  N_Items := DataUnit.ADOSklad.FieldByName('N_Items').AsFloat;
  Net_Weight := DataUnit.ADOSklad.FieldByName('Net_Weight').AsFloat;
  Gross_weight := DataUnit.ADOSklad.FieldByName('Gross_weight').AsFloat;
  Comment := DataUnit.ADOSklad.FieldByName('Comment').AsString;
  EdColor.ColorValue := DataUnit.ADOSklad.FieldByName('Color').AsInteger;
  If DataUnit.ADOSklad.FieldByName('Color').IsNull Then
    EdColor.ColorValue := clWhite;
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
  EdNet_Weight.Text := FloatToStr(Net_Weight);
  EdGross_weight.Text := FloatToStr(Gross_weight);
  EdComment.Text := Comment;
  DataUnit.ADOSklad.EnableControls;
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
   if not TryStrToFloat(EdNet_Weight.text,_Net_Weight) then exit;
    If (_Weight_place <> '') And (_Weight_place <> 'нф') Then
    Begin
      w := StrtoFloat(_Weight_place);
      _Net_Weight := w * _N_Items;
      If strtofloat(EdNet_Weight.text) <> _Net_Weight Then
        EdNet_Weight.text := floattostr(_Net_Weight);
    End;

    Kf :=StrtoFloat(GetNameByKey('Pack', EdPacking.Text, 'Num',Datas.adoPacks ));// Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num'); //EdPacking.DataSource.DataSet.FieldByName('Num').AsFloat;
    g := Kf * _Net_Weight;
    EdGross_weight.text := floattostr(g);
  Except
  End;
end;

function TEditProd.GetNameByKey(KeyField,key,field2: string; tbl: TADOTable): string;
var
v: variant;
begin
    v := tbl.Lookup(KeyField,key, field2);
   if (v=False) or (v=null) then v:=0;
   result:=VarToStr(v);
end;

procedure TEditProd.ReadNums;
begin
  //try
  NameProd := Trim(EdNameProd.Text);
  Producer := Trim(EdProducer.Text);
  Transport := Trim(EdTransport.Text);
  Fridge := Trim(EdFridge.Text);
  Sklad := Trim(EdSklad.Text);
  Lot := Trim(EdLot.Text);
  Packing := Trim(EdPacking.Text);
  Weight_place := Trim(EdWeight_place.Text);
  N_Items := EdN_Items.Value;
  Net_Weight :=strtofloat(EdNet_Weight.text);
  Gross_weight := strtofloat(EdGross_weight.text);

end;

procedure TEditProd.RzDialogButtons1ClickCancel(Sender: TObject);
begin
  DataUnit.ADOSklad.Cancel;
end;

procedure TEditProd.RzDialogButtons1ClickOk(Sender: TObject);
begin
  Try
    DataUnit.ADOSklad.Edit;
    DataUnit.ADOSklad.FieldByName('NameProd').AsString := EdNameProd.Text;
    DataUnit.ADOSklad.FieldByName('Producer').AsString := EdProducer.Text;
    DataUnit.ADOSklad.FieldByName('Transport').AsString := EdTransport.Text;
    DataUnit.ADOSklad.FieldByName('Fridge').AsString := EdFridge.Text;
    DataUnit.ADOSklad.FieldByName('Sklad').AsString := EdSklad.Text;
    DataUnit.ADOSklad.FieldByName('Date').AsDateTime := EdDate.Date;
    DataUnit.ADOSklad.FieldByName('Lot').AsString := EdLot.Text;
    DataUnit.ADOSklad.FieldByName('Packing').AsString := EdPacking.Text;
    DataUnit.ADOSklad.FieldByName('Weight_place').AsString := EdWeight_place.Text;
    DataUnit.ADOSklad.FieldByName('N_Items').AsFloat := EdN_Items.Value;
    DataUnit.ADOSklad.FieldByName('Net_Weight').AsFloat := strtofloat(EdNet_Weight.text);
    DataUnit.ADOSklad.FieldByName('Gross_weight').AsFloat := strtofloat(EdGross_weight.text);
    DataUnit.ADOSklad.FieldByName('Comment').AsString := EdComment.Text;
    If EdColor.ColorValue = clWhite Then
      DataUnit.ADOSklad.FieldByName('Color').Clear
    Else
      DataUnit.ADOSklad.FieldByName('Color').AsInteger := ColorToRGB(EdColor.ColorValue);
    DataUnit.ADOSklad.Post;
  Except
    DataUnit.ADOSklad.Cancel;
  End;
  AddFields;
end;

End.

