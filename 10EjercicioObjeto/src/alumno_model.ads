with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Containers.Vectors;
package alumno_model is
   type Nota is new Integer range 1 .. 10;
   package Integer_Array_Notas is new Ada.Containers.Vectors
     (Element_Type => Nota, Index_Type => Positive);
   use Integer_Array_Notas;
   type C_Alumno is tagged private;
   type Alumno is access C_Alumno'Class;
   --Constructor de la clase.
   function Create (Nombre : String) return Alumno;
   --Getter y Setter
   function Get_Nombre (This : C_Alumno) return String;
   
   procedure Rendir_Examen(This: out C_Alumno;Examen: Nota);
   function Calcular_Promedio(This: out C_Alumno) return Float;
private
   type C_Alumno is tagged record
      Nombre : Unbounded_String;
      Notas  : Integer_Array_Notas.Vector;
   end record;

end alumno_model;
