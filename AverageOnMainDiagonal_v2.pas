program SerednyeDiagonalRandom;
var
  A: array[1..10, 1..10] of integer;
  i, j, n: integer;
  suma, serednye: real;
begin
  randomize;

  write('Введіть розмір масиву n: ');
  readln(n);

  writeln('Згенерований масив:');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      A[i, j] := random(201) - 100;  { від -100 до 100 }
      write(A[i, j]:5);
    end;
    writeln;
  end;

  suma := 0;
  for i := 1 to n do
    suma := suma + A[i, i];

  serednye := suma / n;

  writeln;
  writeln('Середнє арифметичне головної діагоналі = ', serednye:0:2);
end.
