package body triangulo_model is

   function Create (Base : lado; Altura : lado) return Triangulo is
   begin
      return new C_Triangulo'(C_Figura with Base => Base, Altura => Altura);
   end Create;

   function Calcular_Area (This : in C_Triangulo) return Float is
   begin
      return Float(This.Base * This.Altura) / 2.0;
   end Calcular_Area;

end triangulo_model;
