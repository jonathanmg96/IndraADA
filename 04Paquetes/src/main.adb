with io;          use io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure Main is

begin
   --  Insert code here.
   --Put_Line("Tu texto es: " & Get_Non_Empty_Line);
   declare
      Nombre:String:=Get_Non_Empty_Line("Como te llamas?");
      Edad : Integer := Get_Integer("Que edad tienes?");
      Altura :Float:=Get_Float("Cuanto mides?");
      --Input : String:=Get_Non_Empty_Line;
      --Numero: Float:=Get_Float;
   begin
      --Put_Line ("Tu edad es: " & Edad'Image);
      --  For I in Input'Range loop
      --     if (Input(I)=',') then
      --        Input(I) := '.';
      --     end if;
      --  end loop;
      --  Put_Line(Input);
      --  Altura:= Float'Value(Input);
      --  Put(Altura);
      --Reemplazar(Input,',','.');
      --Put(Float'Value(Input));
      --Put(Numero, Exp=>0,Aft=>2);
      Put_Line(To_String(Altura));
   end;
   null;
end Main;
