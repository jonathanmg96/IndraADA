with persona_model;         use persona_model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
procedure Main is
   Jonathan : Persona := Create("Jonathan", "Moncada");
begin
   --  Insert code here.
   Jonathan.Saludar;
   Jonathan.Set_Riqueza(123.80);
   Put_Line(Jonathan.Get_Riqueza'Image);
   null;
end Main;
