with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
package persona_model is

   type C_Persona is abstract tagged private;
   type Persona is access C_Persona'Class;
   --Como la clase es abstracta no tiene constructor
   function To_String(This: in C_Persona) return String is abstract;
   procedure D;
private
   
   type  C_Persona is abstract tagged record
      Nombre: Unbounded_String;
   end record;
   

end persona_model;
