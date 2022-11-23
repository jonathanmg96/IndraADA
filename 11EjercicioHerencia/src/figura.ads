package Figura is

   type C_Figura is abstract tagged private;
   type Figura is access C_Figura'Class;
   --Como la clase es abstracta no tiene constructor
   function Calcular_Area (This : in C_Figura) return Float is abstract;
   procedure D;
private

   type C_Figura is abstract tagged record
      null;
   end record;

end Figura;
