unit UnitFunctions;

interface


uses Types, Controls, Graphics;


   procedure SinCos(AngleRad: Double; var ASin, ACos: Double);
  function Min(A, B: Integer): Integer;
    function Max(A, B: Integer): Integer;
implementation

{**** UBPFD *********** by delphibase.endimus.ru ****
>> Вращение изображения на заданный угол

Зависимости: Windows, Classes, Graphics
Автор:       Fenik, chook_nu@uraltc.ru, Новоуральск
Copyright:   Автор Федоровских Николай
Дата:        2 июня 2002 г.
**************************************************** }


  procedure SinCos(AngleRad: Double; var ASin, ACos: Double);
  begin
    ASin := Sin(AngleRad);
    ACos := Cos(AngleRad);
  end;

  function Min(A, B: Integer): Integer;
  begin
    if A < B then Result := A
             else Result := B;
  end;

  function Max(A, B: Integer): Integer;
  begin
    if A > B then Result := A
             else Result := B;
  end;


end.

