with alumno_model; use alumno_model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Aula;
with profesor_model; use profesor_model;
procedure Main is
   Alumno1 : Alumno := Create("Jonathan");
   Profesor1 : Profesor := Create("Juan");
   procedure Show_Alumno(A: Alumno) is
   begin
      Put_Line(A.To_String);
   end;
   package Curso_Ada is new Aula(Tipo_Integrante => Alumno, Mostrar_Integrante => Show_Alumno);
begin
   --  Insert code here.
   Put_Line(Alumno1.Get_Nombre);
   Alumno1.Rendir_Examen(3);
   Alumno1.Rendir_Examen(7);
   Alumno1.Rendir_Examen(8);
   Alumno1.Rendir_Examen(9);
   Put("La nota media es:");
   Put(Alumno1.Calcular_Promedio, Exp =>0,Aft => 2);
   Put_Line("");
   Put_Line(Alumno1.To_String);
   Curso_Ada.Asistentes.Append(Alumno1);
   Curso_Ada.Mostrar_Asistentes;
   Put_Line(Profesor1.To_String);
   Profesor1.Dictar_Curso;
   Put_Line(Profesor1.To_String);
   null;
end Main;
