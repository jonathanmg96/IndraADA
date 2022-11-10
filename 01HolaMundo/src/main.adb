with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   --Numero : Integer := 20; --Inicializacion de una varible declarada en la parte
                           --declartiva de un procedimiento:
begin
   --  Insert code here.
   --  Put_Line("Hola Mundo!");
   --  Put_Line("El contenido de la variable numero es: " & Numero'Image);
   --  declare
   --     Numero : Integer := 20;
   --  begin
   --     Put_Line(Numero'Image);
   --  end;
   --  declare
   --     Nombre : String := "Esteban";
   --     --Nombre : String(1..10);
   --  begin
   --     Put_Line("El nombre tiene " & Nombre'Length'Image & " caracteres");
   --  end;
   Put_Line("Dime tu nombre:");
   declare

      Nombre : String := Get_Line;
   begin
      if (Nombre'Length > 0) then
         Put_Line("El nombre: " & Nombre);
      else
         Put_Line("Nombre incorrecto!");
      end if;

      Put_Line(if(Nombre'Length > 0) then "Te llamas"&Nombre else "Coloca un nombre correcto!");

   end;
   null;
end Main;
