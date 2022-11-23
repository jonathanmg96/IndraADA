package body Aula is

   procedure Mostrar_Asistentes is
   begin
      For Asistente of Asistentes loop
         Mostrar_Integrante(Asistente);
      end loop;
      
   end Mostrar_Asistentes;

end Aula;
