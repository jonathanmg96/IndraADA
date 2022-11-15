with Ada.Text_IO;       use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with figuras;           use figuras;
with calendario;           use calendario;
procedure Main is
   type Nota is new Integer range 1 .. 10 with
      Default_Value => 5; --Tipo de dato restringido al que le damos un valor por defecto.
   type Numero_Largo is range 1 .. 2**56;
   type Angulo is new Float range 0.0 .. 360.0;
   type Angulo_nuevo is
     mod 360; -- En este tipo de dato si que nos podemos pasar de rango ya que se vuelve al inicio una vez sobre pasemos el limite
   --Tal que si a 180 le sumamos 185 nos daria 5 y no una excepcion.

   --type Nota is range 1 .. 10; --Tambien lo podemos declarar de esta manera sin el Integer.
   --  A : float := 1.3;
   --  B : Distancia := 5.6;

   --  Base           : Distancia    := 10.0;
   --  Altura         : Distancia    := 15.0;
   --  Area_Triangulo : Area;
   --  Nota_Examen    : Nota;
   --  N              : Numero_Largo;
   --  Grados         : Angulo       := 120.5;
   --  Grados_Nuevo   : Angulo_nuevo := 120;
   --  Hoy_Es     : Dia_Semana := Martes;
   --  Mannana_Es : Dia_Semana := Dia_Semana'Succ (Hoy_Es);
   Hoy : Fecha:=(15,Noviembre,2022);
   Cumple_Jonathan:Fecha :=(Dia => 28 , Mes => Junio , Año => 1998);
begin
   --  Insert code here.
   --Programa que calcule el area de una figura.
   --  A := B; --Asignacion de tipos incompatibles
   --  B:=A; --Asignacion de tipos incompatibles
   --  A := Float(B);
   --  B:= Distancia(A);
   --  Area_Triangulo := Calcular_Area (Base, Altura);
   --  Put_Line (Area_Triangulo'Image);
   --  Put_Line (Nota_Examen'Image);
   --  Put_Line
   --    (Nota'Size'Image);--Cuantos bytes ocupa en memoria el nuevo tipo de dato.
   --  Put_Line (N'Size'Image);
   --  Put_Line (Numero_Largo'Size'Image);
   --  Put_Line (Grados'Image);
   --  Put_Line (Grados_Nuevo'Image);
   --  Put_Line (Hoy_Es'Image);
   --  Put_Line (Mannana_Es'Image);
   --  Mostrar_Dias;
   -- Mostrar_Meses;
   --  Put_Line(Hoy);
   Put_Line(To_String_Fecha(Hoy));
   null;
end Main;
