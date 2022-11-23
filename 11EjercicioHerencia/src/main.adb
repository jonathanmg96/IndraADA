with triangulo_model; use triangulo_model;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO;           use Ada.Text_IO;
procedure Main is
  Triangulo1 : Triangulo := Create(5.3,8.9);
begin
   Put("El area del triangulo es: ");
   Put(Triangulo1.Calcular_Area,Exp =>0,Aft => 2);
   null;
end Main;
