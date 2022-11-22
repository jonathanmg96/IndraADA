with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
package persona_model is
   type Dinero is digits 2;
   type C_Persona is tagged private;
   type Persona is access C_Persona'Class;
   --Constructor de la clase.
   function Create(Nombre: String;Apellido: String) return Persona;
   --Getter y Setter
   function Get_Nombre (This: C_Persona) return String;
   function Get_Apellido (This: C_Persona) return String;
   function Get_Riqueza (This: C_Persona) return Dinero;
   procedure Set_Riqueza (This :out C_Persona;Riqueza: Dinero);
   procedure Saludar(This: C_Persona);
private
   type C_Persona is tagged record
      Nombre:Unbounded_String;
      Apellido:Unbounded_String;
      Riqueza : Dinero;
   end record;
end persona_model;
