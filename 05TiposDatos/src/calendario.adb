with Ada.Text_IO;       use Ada.Text_IO;
package body calendario is

   procedure Mostrar_Dias is 
   begin
      for Dia in Dia_Semana loop

      Put_Line ("Hoy es " & Dia'Image);

      case Dia is

         when Lunes =>

            Put_Line ("Feliz comienzo de semana");

         when Sabado .. Domingo =>

            Put_Line ("Feliz fin de semana");

         when Martes .. Jueves =>

            Put_Line ("A tope en la semana");

         when Viernes =>

            Put_Line ("El cuerpo lo sabe");

      end case;

   end loop;
   end Mostrar_Dias;
   
   procedure Mostrar_Meses is 
   begin
   for Mes in Meses loop

      Put_Line ("Estamos en el Mes: " & Mes'Image);

      case Mes is

         when Marzo .. Mayo =>

            Put_Line ("Estas en" & Primavera'Image);

         when Junio .. Agosto =>

            Put_Line ("Estas en" & Verano'Image);

         when Septiembre .. Noviembre =>

            Put_Line ("Estas en" & Otonno'Image);

         when others =>

            Put_Line ("Estas en" & Invierno'Image);

      end case;

      end loop;
      end Mostrar_Meses;

end calendario;
