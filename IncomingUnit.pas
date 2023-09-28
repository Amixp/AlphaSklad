Unit IncomingUnit;

Interface

Uses Forms, Dialogs,
  System.SysUtils,
  Variants, Vcl.Graphics,
  StdCtrls,

  data.Win.ADODB,

  Controls,
  ExtCtrls, UnitSklad1,

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
    procedure EdPackingChange(Sender: TObject);
    procedure EdSkladChange(Sender: TObject);
    procedure EdItemsChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ChFilterClick(Sender: TObject);
  private
    function FloatDecimal(FloatStr: string): string;
  public
    procedure Mul_NetW;
    procedure ReadNums;
    procedure AddRec(Tbl: TADOTable; Key, Vls: array of const);
//    function GetNameByKey(KeyField, Key, field2,sTableName: string): string;
    procedure AddRec2(sTableName: string; Key, Vls: string);
    procedure LogProd2(LTable: string; LNameProd, LProducer, LTransport,
      LFridge, LSklad, LDate, LLot, LWeight_place, LN_Items, LNet_weight,
      LGross_weight, LStorage_fee, LComment, LName, LNumLetter, sColor: String);
    procedure LogProd(LTable: TADOTable; LNameProd, LProducer, LTransport,
      LFridge, LSklad, LDate, LLot, LWeight_place, LN_Items, LNet_weight,
      LGross_weight, LStorage_fee, LComment, LName, LNumLetter: String);
  end;

Var
  // IncomProdEdit: TIncomProdEdit;
  IncomingProd: TIncomingProd;
  sColor: TColor;
  NewSklad: Tsklad;
  NameProd, Producer, Transport, Fridge, Sklad, SDate, SStorage_Date, Lot,
    Packing, Weight_place, Comment: String;
  N_Items, N_ItemsMax, N_ItemsMin, Net_Weight, Gross_weight, Kf: Extended;

Implementation

Uses
  Data1,
  FormOptions1,
  Datas1,
  SaleProd1, DataUnit1;

{$R *.dfm}

{
  ******************************** TIncomingProd *********************************
}
procedure TIncomingProd.AddFields;
begin
  { NameProd,Producer,Transport,Fridge,Sklad,SDate,Lot,Packing,Weight_place: string;
    N_Items,Net_Weight,Gross_weight,Kf: Extended;
    if NameProd<>Datas.ADONameProds.Lookup('NameProd',VarArrayOf([NameProd]),'NameProd') then
    Datas.ADONameProds.AppendRecord([NameProd]); }
  ReadNums;
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

end;

procedure TIncomingProd.AddRec(Tbl: TADOTable; Key, Vls: array of TVarRec);
var
  sRowName, sValues, sTableName, s: string;

begin
  sTableName := Tbl.TableName;

  sRowName := GetVarsStr(Key);
  sValues := GetVarsStr(Vls);
  if DataUnit.FindKey(sRowName, sValues, sTableName) = -1 then
    // TODO : если запись не найдена, то добавить
    Tbl.AppendRecord(Vls);
end;

procedure TIncomingProd.AddRec2(sTableName: string; Key, Vls: string);
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

procedure TIncomingProd.AddProd(Sender: TObject);
begin
  Try
    ReadNums;

    // If DataUnit.ADOSklad.Locate('NameProd;Producer;Transport;Fridge;Sklad;Lot;Packing;Weight_place',
    // VarArrayOf([IncomProdEdit.NameProduct, IncomProdEdit.Producer, IncomProdEdit.Transport, IncomProdEdit.Fridge, IncomProdEdit.Sklad, IncomProdEdit.Lot, IncomProdEdit.TypePack, IncomProdEdit.WeightPlace]), []) Then
    If DataUnit.FDSklad.Locate
      ('NameProd;Producer;Transport;Fridge;Sklad;Lot;Packing;Weight_place',
      VarArrayOf([NameProd, Producer, Transport, Fridge, Sklad, Lot, Packing,
      Weight_place]), []) Then
    Begin
      N_Items := DataUnit.FDSklad.FieldByName('N_Items').AsFloat + N_Items;
      Net_Weight := DataUnit.FDSklad.FieldByName('Net_Weight').AsFloat +
        Net_Weight;
      Gross_weight := DataUnit.FDSklad.FieldByName('Gross_weight').AsFloat +
        Gross_weight;
      DataUnit.FDSklad.Edit;
      DataUnit.FDSklad.FieldByName('N_Items').AsFloat := N_Items;
      DataUnit.FDSklad.FieldByName('Net_Weight').AsFloat := Net_Weight;
      DataUnit.FDSklad.FieldByName('Gross_weight').AsFloat := Gross_weight;
      If sColor <> clWhite Then
        DataUnit.FDSklad.FieldByName('Color').AsInteger := ColorToRGB(sColor);
      // DataUnit.FDSklad.FieldByName('Color').AsInteger:=ColorToRGB(EdColor.ColorValue);
      // DataUnit.FDSklad.FieldByName('Comment').AsString:=EdComment.Text;
      DataUnit.FDSklad.Post;
    End
    Else
    Begin
      DataUnit.FDSklad.Append;
      DataUnit.FDSklad.FieldByName('NameProd').AsString := NameProd;
      DataUnit.FDSklad.FieldByName('Producer').AsString := Producer;
      DataUnit.FDSklad.FieldByName('Transport').AsString := Transport;
      DataUnit.FDSklad.FieldByName('Fridge').AsString := Fridge;
      DataUnit.FDSklad.FieldByName('Sklad').AsString := Sklad;
      DataUnit.FDSklad.FieldByName('Date').AsString := SDate;
      DataUnit.FDSklad.FieldByName('Lot').AsString := Lot;
      DataUnit.FDSklad.FieldByName('Packing').AsString := Packing;
      DataUnit.FDSklad.FieldByName('Weight_place').AsString := Weight_place;
      DataUnit.FDSklad.FieldByName('N_Items').AsFloat := N_Items;
      DataUnit.FDSklad.FieldByName('Net_Weight').AsFloat := Net_Weight;
      DataUnit.FDSklad.FieldByName('Gross_weight').AsFloat := Gross_weight;
      DataUnit.FDSklad.FieldByName('Comment').AsString := Comment;
      If EdColor.ColorValue <> clWhite Then
        DataUnit.FDSklad.FieldByName('Color').AsInteger := ColorToRGB(sColor)
      Else
        DataUnit.FDSklad.FieldByName('Color').Value := null;

      DataUnit.FDSklad.Post;

    End;
    ReadNums;
    LogProd2('IncomingLog', NameProd, Producer, Transport, Fridge, Sklad,
      (SDate), Lot, Weight_place, FloatToStr(N_Items), FloatToStr(Net_Weight),
      FloatToStr(Gross_weight), '', EdComment.Text, '', '', '0');
    // DataUnit.DSSklad.DataSet.Refresh;
    // MainForm.JvDBUltimGrid1.Refresh;/// ():='NameProd' ;
    // JvDBUltimGrid1.SaveGridPosition;
   // mainform.JvDBUltimGrid1.DataSource.DataSet.Close;
   // mainform.JvDBUltimGrid1.DataSource.DataSet.Open;   // { DONE 1 : заменил на refreshmaintable в главном окнеЪ}
    //mainform.JvDBUltimGrid1.Refresh;
    /// JvDBUltimGrid1.RestoreGridPosition();
    DataUnit.FDSklad.Locate
      ('NameProd;Producer;Transport;Fridge;Sklad;Lot;Packing;Weight_place',
      VarArrayOf([NameProd, Producer, Transport, Fridge, Sklad, Lot, Packing,
      Weight_place]), []);

  Except
    DataUnit.FDSklad.Cancel;
  End;
  // AddFields;
end;

procedure TIncomingProd.BtnAddProdClick(Sender: TObject);
begin
  AddProd(Sender);
  // with IncomEdit do
  // begin
  EdNameProd.Text := '';
  EdProducer.Text := '';
  EdTransport.Text := '';
  EdFridge.Text := '';
  EdSklad.Text := '';
  EdLot.Text := '';
  EdPacking.Text := '';
  EdWeight_place.Text := '';
  EdDate.Date := Now;
  EdN_Items.Text := '';
  EdComment.Text := '';
  EdGross_weight.Text := '';
  EdNet_Weight.Text := '';
  EdColor.ColorValue := clWhite;
  // end;
  EdNameProd.SetFocus;
end;

procedure TIncomingProd.ChFilterClick(Sender: TObject);
begin

end;

{ procedure TIncomingProd.ChFilterClick(Sender: TObject);
  var
  F: string;
  begin
  F := '';
  ReadNums;
  If NameProd <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'NameProd=' + AnsiQuotedStr(NameProd + '*',Quote1);
  End;
  If Producer <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'Producer=' + AnsiQuotedStr(Producer + '*',Quote1);
  End;
  If Transport <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'Transport=' + AnsiQuotedStr(Transport + '*',Quote1);
  End;
  If Fridge <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'Fridge=' + AnsiQuotedStr(Fridge + '*',Quote1);
  End;
  If Sklad <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'Sklad=' + AnsiQuotedStr(Sklad + '*',Quote1);
  End;
  If Lot <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'Lot=' + AnsiQuotedStr(Lot + '*',Quote1);
  End;
  If Packing <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'Packing=' + AnsiQuotedStr(Packing + '*',Quote1);
  End;
  If Weight_place <> '' Then
  Begin
  If F <> '' Then
  F := F + ' AND ';
  F := F + 'Weight_place=' + AnsiQuotedStr(Weight_place + '*',Quote1);
  End;
  DataUnit.FDSklad.Filter := F;
  DataUnit.FDSklad.Filtered := ChFilter.Checked;
  end;
}

procedure TIncomingProd.EdPackingChange(Sender: TObject);
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



procedure TIncomingProd.EdSkladChange(Sender: TObject);
var
  v: variant;
begin
  v := DataUnit.getkey('Sklad', EdSklad.Text, 'Date','sklad');
  If VarIsNull(v) Then
    Exit;
  EdDate.Date := v; {
    EdDate.Color:=clBackground;
    Application.ProcessMessages;
    EdDate.Color:=clWindow;
    Application.ProcessMessages; }
end;

function TIncomingProd.FloatDecimal(FloatStr: string): string;
begin
  FloatStr := trim(FloatStr);
  If Pos('.', FloatStr) > 0 Then
  Begin
    If FormatSettings.DecimalSeparator <> '.' Then
      FloatStr[Pos('.', FloatStr)] := FormatSettings.DecimalSeparator;
  End
  Else If Pos(',', FloatStr) > 0 Then
    If FormatSettings.DecimalSeparator <> ',' Then
      FloatStr[Pos(',', FloatStr)] := char(FormatSettings.DecimalSeparator);
  result := FloatStr;

end;

procedure TIncomingProd.EdItemsChange(Sender: TObject);
begin
  EdWeight_place.Text := FloatDecimal(EdWeight_place.Text);

  // TryStrToFloat(EdNet_Weight.Text, n);
  // If (EdWeight_place.Text <> '') and (EdN_Items.Text <> '') and (EdNet_Weight.Text <> '') Then
  Mul_NetW;

  { If (EdNet_Weight.Text <> '') and (n <> Net_Weight) Then
    Mul_NetW; }

  // Weight_place := s;
end;

procedure TIncomingProd.FormCreate(Sender: TObject);
begin
  // if DataUnit.FDSklad.Active  then exit;

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

  mainform.ReadNames(EdProducer, DataUnit.FDQueryCmd, 'Producer',
    'Producers', '');
  mainform.ReadNames(EdNameProd, DataUnit.FDQueryCmd, 'NameProd',
    'NameProds', '');
  mainform.ReadNames(EdTransport, DataUnit.FDQueryCmd, 'Transport',
    'Transports', '');
  mainform.ReadNames(EdFridge, DataUnit.FDQueryCmd, 'Fridge', 'Fridges', '');
  mainform.ReadNames(EdSklad, DataUnit.FDQueryCmd, 'Sklad', 'Sklads', '');
  mainform.ReadNames(EdLot, DataUnit.FDQueryCmd, 'Lot', 'Lots', '');
  mainform.ReadNames(EdPacking, DataUnit.FDQueryCmd, 'Pack', 'Packs', '');
  mainform.ReadNames(EdWeight_place, DataUnit.FDQueryCmd, 'Weight_place',
    'Weight_places', '');
end;

procedure TIncomingProd.LogProd2(LTable: string;
  LNameProd, LProducer, LTransport, LFridge, LSklad, LDate, LLot, LWeight_place,
  LN_Items, LNet_weight, LGross_weight, LStorage_fee, LComment, LName,
  LNumLetter, sColor: String);
var
  NewSklad2: Tsklad;
begin
  NewSklad2.NameProd := LNameProd;
  NewSklad2.Producer := LProducer;
  NewSklad2.Transport := LTransport;
  NewSklad2.Fridge := LFridge;
  NewSklad2.Supplier:='';
  NewSklad2.Pack:='';
  NewSklad2.SkladSvid := LSklad;
  TryStrToDate(LDate, NewSklad2.StorageDate);
  NewSklad2.Lot := LLot;
  NewSklad2.Weightplace := LWeight_place;
  TryStrToFloat(LN_Items, NewSklad2.NumPlaces);
  TryStrToFloat(LNet_weight, NewSklad2.Netweight);
  TryStrToFloat(LGross_weight, NewSklad2.Grossweight);
  TryStrToCurr(LStorage_fee, NewSklad2.Storagefee);
  NewSklad2.Comment := LComment;
  NewSklad2.Client := LName;
  TryStrToInt(LNumLetter, NewSklad2.NumberLetter);
  NewSklad2.Color := strtoint(sColor);
  If LTable = 'SaleLog' Then
    DataUnit.SaleLog(NewSklad2)
  else
    DataUnit.IncomingLog(NewSklad2);
  { DataUnit.AddKey('[DateTime],[NameProd],[Producer],[Transport],[Fridge],[Sklad],'
    +'[Date],[Lot],[Weight_place],[N_Items],[Net_weight],[Gross_weight],[Comment]',
    AnsiQuotedStr(DateTimeToStr(Now))+', '+AnsiQuotedStr(NameProd)+', '+AnsiQuotedStr(LProducer)+', '+AnsiQuotedStr(LTransport)+', '+AnsiQuotedStr(LFridge)+', '+AnsiQuotedStr(LSklad)
    +', '+AnsiQuotedStr(LDate)+', '+AnsiQuotedStr(LLot)+', '+AnsiQuotedStr(LWeight_place)+', '
    +', '+AnsiQuotedStr(LN_Items)+', '+AnsiQuotedStr(LNet_weight)+', '+AnsiQuotedStr(LGross_weight)
    +', '+AnsiQuotedStr(LComment), 'IncomingLog') }
end;

procedure TIncomingProd.LogProd(LTable: TADOTable;
  LNameProd, LProducer, LTransport, LFridge, LSklad, LDate, LLot, LWeight_place,
  LN_Items, LNet_weight, LGross_weight, LStorage_fee, LComment, LName,
  LNumLetter: String);
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
    LTable.FieldByName('Net_Weight').AsString := LNet_weight;
    LTable.FieldByName('Gross_weight').AsString := LGross_weight;
    If LTable.TableName = 'SaleLog' Then
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
    Log( 'Ошибка! Запись в журнал не добавлена!');
    MessageDlg('Ошибка! Запись в журнал не добавлена!', mtError, [mbOK], 0);
  End;
end;

{ procedure TIncomingProd.Mul_NetW;
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
    If TryStrToFloat(Weight_place, w) Then
    Begin
      Net_Weight := w * EdN_Items.Value;
      EdNet_Weight.Text := FloatToStr(Net_Weight);
    End;
  Except
  End;
  Try
    Kf := StrtoFloat(DataUnit.GetNameByKey('Pack', EdPacking.Text, 'Num', 'Packs')
      ); // Datas.Packs.Lookup('Pack', EdPacking.Text, 'Num');
    g := Kf * Net_Weight;
    EdGross_weight.Text := FloatToStr(g);
  Except
  End;
end;

procedure TIncomingProd.ReadNums;
begin
  NameProd := trim(EdNameProd.Text);
  Producer := trim(EdProducer.Text);
  Transport := trim(EdTransport.Text);
  Fridge := trim(EdFridge.Text);
  Sklad := trim(EdSklad.Text);
  SDate := DateToStr(EdDate.Date);
  Lot := trim(EdLot.Text);
  sColor := EdColor.ColorValue;
  Packing := trim(EdPacking.Text);
  Weight_place := FloatDecimal(EdWeight_place.Text);
  N_Items := 0;
  Net_Weight := 0;
  Gross_weight := 0;
  N_Items := EdN_Items.Value;
  TryStrToFloat(FloatDecimal(EdNet_Weight.Text), Net_Weight);
  // Net_Weight := EdNet_Weight.AsFloat;
  TryStrToFloat(FloatDecimal(EdGross_weight.Text), Gross_weight);
  // Gross_weight := EdGross_weight.AsFloat;
  Comment := trim(EdComment.Text);

  NewSklad.NameProd := trim(EdNameProd.Text);
  NewSklad.Producer := trim(EdProducer.Text);
  NewSklad.Transport := trim(EdTransport.Text);
  NewSklad.Fridge := trim(EdFridge.Text);
  NewSklad.SkladSvid := trim(EdSklad.Text);
  NewSklad.LogDateTime := (EdDate.Date);
  NewSklad.Lot := trim(EdLot.Text);
  NewSklad.Color := EdColor.ColorValue;
  NewSklad.Pack := trim(EdPacking.Text);
  NewSklad.Weightplace := FloatDecimal(EdWeight_place.Text);
  NewSklad.NumPlaces := 0;
  NewSklad.Netweight := 0;
  NewSklad.Grossweight := 0;
  NewSklad.NumPlaces := EdN_Items.Value;
  TryStrToFloat(FloatDecimal(EdNet_Weight.Text), NewSklad.Netweight);
  // Net_Weight := EdNet_Weight.AsFloat;
  TryStrToFloat(FloatDecimal(EdGross_weight.Text), NewSklad.Grossweight);
  // Gross_weight := EdGross_weight.AsFloat;
  NewSklad.Comment := trim(EdComment.Text);

end;

End.
