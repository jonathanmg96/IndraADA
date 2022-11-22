with alumno_model; use alumno_model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
procedure Main is
   Alumno1 : Alumno := Create("Jonathan");
begin
   --  Insert code here.
   Put_Line(Alumno1.Get_Nombre);
   Alumno1.Rendir_Examen(3);
   Alumno1.Rendir_Examen(7);
   Alumno1.Rendir_Examen(8);
   Alumno1.Rendir_Examen(9);
   Put_Line(Alumno1.Calcular_Promedio'Image);

   null;
end Main;
