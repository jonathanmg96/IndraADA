with Figura; use Figura;
package triangulo_model is

   type lado is new Float;
   type C_Triangulo is new C_Figura with private;
   type Triangulo is access C_Triangulo'Class;
   --Constructor de la clase.
   function Create (Base : lado; Altura : lado) return Triangulo;
   overriding function Calcular_Area (This : in C_Triangulo) return Float;
   
private
   type C_Triangulo is new C_Figura with record
      Base   : lado;
      Altura : lado;
   end record;
end triangulo_model;
