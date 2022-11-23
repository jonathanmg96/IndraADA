with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
with persona_model; use persona_model;
package profesor_model is
   type Cantidad_Cursos is new Integer;
   type C_Profesor is new C_Persona with private;
   type Profesor is access C_Profesor'Class;
   --Constructor de la clase.
   function Create (Nombre : String) return Profesor;
   procedure Dictar_Curso (This : out C_Profesor);
   overriding function To_String (This : in C_Profesor) return String;
private
   type C_Profesor is new C_Persona with record
      Nombre          : Unbounded_String;
      Cursos_Dictados : Cantidad_Cursos := 0;
   end record;
end profesor_model;
