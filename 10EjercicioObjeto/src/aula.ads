with Ada.Containers.Vectors;

generic type Tipo_Integrante is private;
with procedure Mostrar_Integrante(Item: Tipo_Integrante);
package Aula is

   package Lista_Integrantes is new Ada.Containers.Vectors(Element_Type => Tipo_Integrante,Index_Type => Positive);

   
   Asistentes : Lista_Integrantes.Vector;
   
   procedure Mostrar_Asistentes;
end Aula;
