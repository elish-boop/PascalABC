program SerednyeDiagonal;
var
  A: array[1..10, 1..10] of integer;
  i, j, n: integer;
  suma: real;
  serednye: real;
begin
  write('Введіть розмір масиву n: ');
  readln(n);

  writeln('Введіть елементи масиву:');
  for i := 1 to n do
    for j := 1 to n do
      read(A[i, j]);

  suma := 0;
  for i := 1 to n do
    suma := suma + A[i, i];

  serednye := suma / n;

  writeln('Середнє арифметичне елементів головної діагоналі = ', serednye:0:2);
end.
