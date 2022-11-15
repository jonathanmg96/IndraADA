package body figuras is

   function "*" (Left : Distancia; Right : Distancia) return Area is
   begin
      return Area (Left) * Area (Right);
   end "*";

   function Calcular_Area (Base : Distancia; Altura : Distancia) return Area is
   begin
      return Base * Altura / 2.0;
   end Calcular_Area;
end figuras;
