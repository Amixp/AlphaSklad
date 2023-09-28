Unit IncomingUnit;

Interface

Uses Forms, Dialogs,
  System.SysUtils,
  DBTables,
  Variants,
  StdCtrls,
  Graphics,
      data.Win.ADODB,

  Controls,
  ExtCtrls,

  Classes, JvFullColorSpaces, Mask, JvExMask, JvSpin, JvCombobox,
  JvExStdCtrls, JvColorCombo, JvFullColorCtrls, JvStringHolder, Buttons,
  ComCtrls,
   UnitService;

Type
  TIncomingProd = class(TForm)
    BtnCancel: TBitBtn;
    BtnAddProdAndClose: TBitBtn;
    BtnAddProd: TBitBtn;
    ChFilter: TCheckBox;
    EdColor: TJvColorComboBox;
    EdComment: TEdit;
    EdDate: TDateTimePicker;
    EdFridge: TJvComboBox;
    EdGross_weight: TEdit;
    EdLot: TJvComboBox;
    EdNameProd: TJvComboBox;
    EdNet_Weight: TEdit;
    EdN_Items: TJvSpinEdit;
    EdPacking: TJvComboBox;
    EdProducer: TJvComboBox;
    EdSklad: TJvComboBox;
    EdTransport: TJvComboBox;
    EdWeight_place: TJvComboBox;
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
    Str1: TJvStrHolder;
    procedure AddFields;
    procedure AddProd(Sender: TObject);
    procedure BtnAddProdClick(Sender: TObject);
    procedure ChFilterClick(Sender: TObject);
    procedure EdNet_WeightChange(Sender: TObject);
    procedure EdN_ItemsChange(Sender: TObject);
    procedure EdPackingChange(Sender: TObject);
    procedure EdSkladChange(Sender: TObject);
    procedure EdWeight_placeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Mul_NetW;
    procedure ReadNums;
    procedure AddRec(Tbl: TADOTable; Key,Vls: array of const);
    function GetNameByKey(KeyField, key, field2: string;
      tbl: TADOTable): string;
  public
    procedure LogProd(LTable: TADOTable; LNameProd, LProducer, LTransport, LFridge,
            LSklad, LDate, LLot, LWeight_place, LN_Items, LNet_weight,
            LGross_weight, LStorage_fee, LComment, LName, LNumLetter: String);
  end;

Var
//  IncomProdEdit: TIncomProdEdit;
  IncomingProd: TIncomingProd; sColor: TColor;
 NameProd, Producer, Transport, Fridge, Sklad, SDate, SStorage_Date, Lot, Packing, Weight_place, Comment: String;
  N_Items,N_ItemsMax,N_ItemsMin, Net_Weight, Gross_weight, Kf: Extended;
Implementation

Uses UnitSklad1,
  Data1,
  FormOptions1,
  Datas1,
  SaleProd1;

{$R *.dfm}

{
******************************** TIncomingProd *********************************
}
procedure TIncomingProd.AddFields;
begin
  {NameProd,Producer,Transport,Fridge,Sklad,SDate,Lot,Packing,Weight_place: string;
    N_Items,Net_Weight,Gross_weight,Kf: Extended;
  if NameProd<>Datas.ADONameProds.Lookup('NameProd',VarArrayOf([NameProd]),'NameProd') then
    Datas.ADONameProds.AppendRecord([NameProd]);}
  ReadNums;
  With Datas Do
  Begin
    //  if not ADONameProds.FindKey([NameProd]) then
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



procedure TIncomingProd.AddRec(Tbl: TADOTable; Key,Vls: array of TVarRec);
var
sRowName,sValues,sTableName,s: string;

begin
 sTableName:=Tbl.TableName;

 sRowName:= GetVarsStr(Key);
 sValues:=GetVarsStr(Vls);
if DataUnit.FindKey(sRowName,sValues,sTableName) =-1 then //TODO : если запись не найдена, то добавить
  Tbl.AppendRecord(Vls);
end;

procedure TIncomingProd.AddProd(Sender: TObject);
begin
  Try
    ReadNums;

//    If DataUnit.ADOSklad.Locate('NameProd;Producer;Transport;Fridge;Sklad;Lot;Packing;Weight_place',
//      VarArrayOf([IncomProdEdit.NameProduct, IncomProdEdit.Producer, IncomProdEdit.Transport, IncomProdEdit.Fridge, IncomProdEdit.Sklad, IncomProdEdit.Lot, IncomProdEdit.TypePack, IncomProdEdit.WeightPlace]), []) Then
      If DataUnit.ADOSklad.Locate('NameProd;Producer;Transport;Fridge;Sklad;Lot;Packing;Weight_place',
        VarArrayOf([NameProd, Producer, Transport, Fridge, Sklad, Lot, Packing, Weight_place]), []) Then
    Begin
      N_Items := DataUnit.ADOSklad.FieldByName('N_Items').AsFloat + N_Items;
      Net_Weight := DataUnit.ADOSklad.FieldByName('Net_Weight').AsFloat + Net_Weight;
      Gross_weight := DataUnit.ADOSklad.FieldByName('Gross_weight').AsFloat + Gross_weight;
      DataUnit.ADOSklad.Edit;
      DataUnit.ADOSklad.FieldByName('N_Items').AsFloat := N_Items;
      DataUnit.ADOSklad.FieldByName('Net_Weight').AsFloat := Net_Weight;
      DataUnit.ADOSklad.FieldByName('Gross_weight').AsFloat := Gross_weight;
      If sColor <> clWhite Then
        DataUnit.ADOSklad.FieldByName('Color').AsInteger := ColorToRGB(sColor);
      // DataUnit.ADOSklad.FieldByName('Color').AsInteger:=ColorToRGB(EdColor.ColorValue);
     //DataUnit.ADOSklad.FieldByName('Comment').AsString:=EdComment.Text;
      DataUnit.ADOSklad.Post;
    End
    Else
    Begin
      DataUnit.ADOSklad.Append;
      DataUnit.ADOSklad.FieldByName('NameProd').AsString := NameProd;
      DataUnit.ADOSklad.FieldByName('Producer').AsString := Producer;
      DataUnit.ADOSklad.FieldByName('Transport').AsString := Transport;
      DataUnit.ADOSklad.FieldByName('Fridge').AsString := Fridge;
      DataUnit.ADOSklad.FieldByName('Sklad').AsString := Sklad;
      DataUnit.ADOSklad.FieldByName('Date').AsString := SDate;
      DataUnit.ADOSklad.FieldByName('Lot').AsString := Lot;
      DataUnit.ADOSklad.FieldByName('Packing').AsString := Packing ;
      DataUnit.ADOSklad.FieldByName('Weight_place').AsString := Weight_place;
      DataUnit.ADOSklad.FieldByName('N_Items').AsFloat := N_Items;
      DataUnit.ADOSklad.FieldByName('Net_Weight').AsFloat := Net_Weight;
      DataUnit.ADOSklad.FieldByName('Gross_weight').AsFloat := Gross_weight;
      DataUnit.ADOSklad.FieldByName('Comment').AsString := Comment;
      If EdColor.ColorValue <> clWhite Then
        DataUnit.ADOSklad.FieldByName('Color').AsInteger := ColorToRGB(sColor)
      Else
        DataUnit.ADOSklad.FieldByName('Color').Value := null;

      DataUnit.ADOSklad.Post;

    End;
    ReadNums;
    LogProd(DataUnit.ADOIncomingLog, NameProd, Producer,
     Transport, Fridge, Sklad,
      (SDate), Lot, Weight_place, FloatToStr(N_Items), FloatToStr(Net_Weight), FloatToStr(Gross_weight), '', EdComment.Text, '', '');
  Except
    DataUnit.ADOSklad.Cancel;
  End;
  AddFields;
end;

procedure TIncomingProd.BtnAddProdClick(Sender: TObject);
begin
  AddProd(sender);
   //with IncomEdit do
  // begin
  edNameProd.text:='';
  edProducer.text:='';
  edTransport.text:='';
  edFridge.text:='';
  edSklad.text:='';
  edLot.text:='';
  edPacking.text:='';
  edWeight_place.text:='';
  edDate.Date := Now;
  edN_Items.text:='';
  edComment.text:='';
  edGross_weight.text:='';
  edNet_Weight.text:='';
  edColor.ColorValue := clWhite;
  //end;
  EdNameProd.SetFocus;
end;

procedure TIncomingProd.ChFilterClick(Sender: TObject);
var
  F: string;
begin
  F := '';
  ReadNums;
  If NameProd <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'NameProd=' + QuotedStr(NameProd + '*');
  End;
  If Producer <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Producer=' + QuotedStr(Producer + '*');
  End;
  If Transport <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Transport=' + QuotedStr(Transport + '*');
  End;
  If Fridge <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Fridge=' + QuotedStr(Fridge + '*');
  End;
  If Sklad <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Sklad=' + QuotedStr(Sklad + '*');
  End;
  If Lot <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Lot=' + QuotedStr(Lot + '*');
  End;
  If Packing <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Packing=' + QuotedStr(Packing + '*');
  End;
  If Weight_place <> '' Then
  Begin
    If F <> '' Then
      F := F + ' AND ';
    F := F + 'Weight_place=' + QuotedStr(Weight_place + '*');
  End;
  DataUnit.ADOSklad.Filter := F;
  DataUnit.ADOSklad.Filtered := ChFilter.Checked;
end;

procedure TIncomingProd.EdNet_WeightChange(Sender: TObject);
var
n: extended;
begin
TryStrToFloat(EdNet_Weight.Text,n);
  If (EdNet_Weight.Text <> '' ) and (n <> Net_Weight) Then
    Mul_NetW;
end;

procedure TIncomingProd.EdN_ItemsChange(Sender: TObject);
begin
  If (EdN_Items.Text <> '') and (EdN_Items.Value <> N_Items) Then
    Mul_NetW;
end;

procedure TIncomingProd.EdPackingChange(Sender: TObject);
begin
  If EdPacking.Text <> '' Then
  Begin
    Try

      Kf := StrtoFloat(GetNameByKey('Pack', EdPacking.Text, 'Num',Datas.adoPacks ));//Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num');
    Except
      Kf := 1;
    End;
    Mul_NetW;
  End;
end;

function TIncomingProd.GetNameByKey(KeyField,key,field2: string; tbl: TADOTable): string;
var
v: variant;
begin

    v := tbl.Lookup(KeyField,key, field2);
   if v<>False then result:=VarToStr(v);
end;

procedure TIncomingProd.EdSkladChange(Sender: TObject);
var
  v: Variant;
begin
  v := DataUnit.ADOSklad.Lookup('Sklad', EdSklad.Text, 'Date');
  If VarIsNull(v) Then
    Exit;
  EdDate.Date := v; {
  EdDate.Color:=clBackground;
  Application.ProcessMessages;
  EdDate.Color:=clWindow;
  Application.ProcessMessages;  }
end;

procedure TIncomingProd.EdWeight_placeChange(Sender: TObject);
var
  s: string;
begin
  Weight_place := EdWeight_place.Text;
  If Pos('.', Weight_place) > 0 Then
  Begin
    If FormatSettings.DecimalSeparator <> '.' Then
      s[Pos('.', Weight_place)] := FormatSettings.DecimalSeparator;
  End
  Else
    If Pos(',', Weight_place) > 0 Then
      If FormatSettings.DecimalSeparator <> ',' Then
        s[Pos(',', Weight_place)] := char(FormatSettings.DecimalSeparator);
  EdWeight_place.Text := Weight_place;

  If EdWeight_place.Text <> '' Then
    Mul_NetW;
end;

procedure TIncomingProd.FormShow(Sender: TObject);
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

  EdDate.Date := Now;
  EdColor.Color := clWhite;
  EdColor.ColorValue := clWhite;

MainForm.ReadNames(EdProducer,DataUnit.ADOQuery1,'Producer','Producers','');
MainForm.ReadNames(EdNameProd,DataUnit.ADOQuery1,'NameProd','NameProds','');
MainForm.ReadNames(EdTransport,DataUnit.ADOQuery1,'Transport','Transports','');
MainForm.ReadNames(EdFridge,DataUnit.ADOQuery1,'Fridge','Fridges','');
MainForm.ReadNames(EdSklad,DataUnit.ADOQuery1,'Sklad','Sklads','');
MainForm.ReadNames(EdLot,DataUnit.ADOQuery1,'Lot','Lots','');
MainForm.ReadNames(EdPacking,DataUnit.ADOQuery1,'Pack','Packs','');
MainForm.ReadNames(EdWeight_place,DataUnit.ADOQuery1,'Weight_place','Weight_places','');
end;

procedure TIncomingProd.LogProd(LTable: TADOTable; LNameProd, LProducer,
        LTransport, LFridge, LSklad, LDate, LLot, LWeight_place, LN_Items,
        LNet_weight, LGross_weight, LStorage_fee, LComment, LName, LNumLetter:
        String);
begin
  LTable.Append;
  Try
    LTable.FieldByName('DateTime').AsDateTime := Now;
    LTable.FieldByName('NameProd').AsString := LNameProd;
    LTable.FieldByName('Producer').AsString := LProducer;
    LTable.FieldByName('Transport').AsString := LTransport;
    LTable.FieldByName('Fridge').AsString := LFridge;
    LTable.FieldByName('Sklad').AsString := LSklad;
    LTable.FieldByName('Date').AsString := LDate;
    LTable.FieldByName('Lot').AsString := LLot;
    LTable.FieldByName('Weight_place').AsString := LWeight_place;
    LTable.FieldByName('N_Items').AsString := LN_Items;
    LTable.FieldByName('Net_Weight').AsString := LNet_Weight;
    LTable.FieldByName('Gross_weight').AsString := LGross_weight;
    If LTable.TableName = DataUnit.ADOSaleLog.TableName Then
    Begin
      LTable.FieldByName('Storage_fee').AsString := LStorage_fee;
      LTable.FieldByName('Name').AsString := LName;
      LTable.FieldByName('NumLetter').AsString := LNumLetter;
    End
    Else
      LTable.FieldByName('Comment').AsString := LComment;
    LTable.Post
  Except
    LTable.Cancel;
     MessageDlg('Ошибка! Запись в журнал не добавлена!',mtError,[mbOK],0);
  End;
end;

{procedure TIncomingProd.Mul_NetW;
var
  w, g: Extended;
begin
  ReadNums;
  Try
    If (Weight_place <> '') And (Weight_place <> 'нф') Then
    Begin
      w := StrToFloat(Weight_place);
      Net_Weight := w * N_Items;
    End;
  Except
  End;
  Try
    Kf := Datas.Packs.Lookup('Pack', Packing, 'Num');
    g := Kf * Net_Weight;
    Gross_weight := g;
 ////   EdNet_Weight.Text := FloatToStr(Net_Weight);
    EdGross_weight.Text := FloatToStr(Gross_weight);
  Except
  End;
end; }
procedure TIncomingProd.Mul_NetW;
var
  w, g: Extended;
begin
ReadNums;
  Try
    If TryStrToFloat(Weight_place,w) Then
    Begin
      Net_Weight :=w * EdN_Items.Value;
      edNet_Weight.Text :=FloatToStr ( Net_Weight) ;
    End;
  Except
  End;
  Try
    Kf := StrtoFloat(GetNameByKey('Pack', EdPacking.Text, 'Num',Datas.adoPacks ));  //Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num');
    g := Kf * Net_Weight;
    EdGross_weight.text  := FloatToStr(g);
  Except
  End;
end;

procedure TIncomingProd.ReadNums;
begin
  NameProd := Trim(EdNameProd.Text);
  Producer := Trim(EdProducer.Text);
  Transport := Trim(EdTransport.Text);
  Fridge := Trim(EdFridge.Text);
  Sklad := Trim(EdSklad.Text);
  SDate := DateToStr(EdDate.Date);
  Lot := Trim(EdLot.Text);
  sColor:=EdColor.ColorValue;
  Packing := Trim(EdPacking.Text);
  Weight_place := Trim(EdWeight_place.Text);
  N_Items:=0;
  Net_Weight:=0;
  Gross_weight:=0;
  N_Items := EdN_Items.Value;
  TryStrToFloat(EdNet_Weight.Text,Net_Weight);
//  Net_Weight := EdNet_Weight.AsFloat;
  TryStrToFloat(EdGross_weight.Text,Gross_weight);
//  Gross_weight := EdGross_weight.AsFloat;
  Comment:=Trim(EdComment.Text);
end;

End.


