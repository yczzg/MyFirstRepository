program Generics;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Classes,
  Generics.Collections;

var
  intList: TList<Integer>;
  oldList: TList;
  i,n,elem:  Integer;
  pTemp:   Pointer;
begin
  try
    oldList := TList.Create;
    oldList.Add(Pointer(1));
    oldList.Add(Pointer(2));
    oldList.Add(Pointer(3));

    WriteLn('TList start');
    for i := 0 to oldList.Count - 1 do
    begin
      WriteLn(Integer(oldList[i]));
    end;

    for pTemp in oldList do
      begin
        WriteLn(Integer(pTemp));
      end;

    intList := TList<Integer>.Create;
    intList.Add(1);
    intList.Add(2);
    intList.Add(3);

    WriteLn(#13#10 + 'TList<T> start');

    for i := 0 to intList.Count - 1 do
      WriteLn(intList[i]);

    for elem in intList do
      WriteLn(elem);

    FreeAndNil(intList);
    WriteLn('press any key');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
