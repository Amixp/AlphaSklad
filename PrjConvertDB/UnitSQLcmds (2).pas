unit UnitSQLcmds;


interface

   uses Vcl.Dialogs , System.Variants,Vcl.ComCtrls, System.SysUtils ;

const
  // Возврат и перевод каретки
  CrLf = #13#10;

// Прототипы функций

function SqlInsert(Values : array of const;
TableName : string; ColNames : array of string) : string; overload;

function SqlInsert(Values : array of const;
TableName : string) : string; overload;

function SqlUpdate(Values : array of const; TableName : string;
ColNames : array of string; WhereClause : string) : string;

implementation

// Помещаем TDateTime в Values (array of const)


uses UnitFunctions;// Представлен как Variant

function SqlInsert(Values : array of const;
TableName : string; ColNames : array of string) : string;
var
  RetVar : string;
  i : integer;
begin
  RetVar := 'insert into ' + TableName + CrLf + '(' + ColNames[0];
  for i := 1 to High(ColNames) do
    RetVar := RetVar + ',' + ColNames[i];
  RetVar := RetVar + ')' + CrLf;

  RetVar := RetVar + 'values (';

 { for i := 0 to VarArrayHighBound([Values]) do
  begin
    case Values[i].VType of
      vtInteger, vtInt64 :
        RetVar := RetVar + IntToStr(Values[i].VInteger);
      vtChar :
        RetVar := RetVar + QuotedStr(Values[i].VChar);
      vtString :
        RetVar := RetVar + QuotedStr(Values[i].VString^);
      vtPChar :
        RetVar := RetVar + QuotedStr(Values[i].VPChar);
      vtExtended :
        RetVar := RetVar + FloatToStr(Values[i].VExtended^);
      vtAnsiString :
        RetVar := RetVar + QuotedStr(string(Values[i].VAnsiString));
      // TDateTime - иначе получаем как vtExtended
      vtVariant :
        RetVar := RetVar + 'to_date(' + QuotedStr(FormatdateTime('dd/mm/yyyy',
        TDateTime(Values[i].VVariant^))) + ',' + QuotedStr('dd/mm/yyyy') + ')';
      else
        RetVar := RetVar + '??????';
    end;

    RetVar := RetVar + ',';
  end;  }

  Delete(RetVar,length(RetVar),1);
  RetVar := RetVar + ')';
  if High(Values) < High(ColNames) then
    ShowMessage('SQL Insert - Not enough values.');
  if High(Values) > High(ColNames) then
    ShowMessage('SQL Insert - Too many values.');

  Result := RetVar;
end;


function SqlInsert(Values : array of const;
TableName : string) : string; overload;
var
  RetVar : string;
  i : integer;
begin
  RetVar := 'insert into ' + TableName + CrLf;
  RetVar := RetVar + 'values (';

  for i := 0 to High(Values) do
  begin
    case Values[i].VType of
    vtInteger, vtInt64 :
      RetVar := RetVar + IntToStr(Values[i].VInteger);
    vtChar :
      RetVar := RetVar + QuotedStr(Values[i].VChar);
    vtString :
      RetVar := RetVar + QuotedStr(Values[i].VString^);
    vtPChar :
      RetVar := RetVar + QuotedStr(Values[i].VPChar);
    vtExtended :
      RetVar := RetVar + FloatToStr(Values[i].VExtended^);
    vtAnsiString :
      RetVar := RetVar + QuotedStr(string(Values[i].VAnsiString));
    // TDateTime - иначе получаем как vtExtended
    vtVariant :
      RetVar := RetVar + 'to_date(' + QuotedStr(FormatdateTime('dd/mm/yyyy',
      TDateTime(Values[i].VVariant^))) + ',' + QuotedStr('dd/mm/yyyy') + ')';
    else
      RetVar := RetVar + '??????';
    end;
    RetVar := RetVar + ',';
  end;

  Delete(RetVar,length(RetVar),1);
  RetVar := RetVar + ')';

  Result := RetVar;
end;


function SqlUpdate(Values : array of const; TableName : string;
ColNames : array of string; WhereClause : string) : string;
var
  RetVar, Parm : string;
  i : integer;
begin
  RetVar := 'update ' + TableName + ' set' + CrLf;

  for i := 0 to min(High(Values),High(ColNames)) do
  begin
    case Values[i].VType of
      vtInteger, vtInt64 :
        Parm := IntToStr(Values[i].VInteger);
      vtChar :
        Parm := QuotedStr(Values[i].VChar);
      vtString :
        Parm := QuotedStr(Values[i].VString^);
      vtPChar :
        Parm := QuotedStr(Values[i].VPChar);
      vtExtended :
        Parm := FloatToStr(Values[i].VExtended^);
      vtAnsiString :
        Parm := QuotedStr(string(Values[i].VAnsiString));
      // TDateTime - иначе получаем как vtExtended
      vtVariant : Parm := 'to_date(' + QuotedStr(FormatdateTime('dd/mm/yyyy',
        TDateTime(Values[i].VVariant^))) + ',' + QuotedStr('dd/mm/yyyy') + ')';
      else
        Parm := '??????';
    end;

    RetVar := RetVar + ColNames[i] + '=' + Parm + ',';
  end;

  Delete(RetVar,length(RetVar),1);
  RetVar := RetVar + CrLf + 'where ' + WhereClause;
  if High(Values) < High(ColNames) then
    ShowMessage('SQL Update - Not enough values.');
  if High(Values) > High(ColNames) then
    ShowMessage('SQL Update - Too many values.');

  Result := RetVar;
end;





end.
