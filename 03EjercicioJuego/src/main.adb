with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
procedure Main is
   G : Generator;
   --Numero_azar: Uniformly_Distributed;
   Numero_azar:Integer;
   Es_correcto : boolean := False;
   Intentos : Integer :=0;
   --Num_usuario:Integer;
begin
   --  Insert code here.
   --  Reset(G);
   --  for I in 1..10 loop
   --     Numero_azar:=Integer((Random(G) * 100.00) +1.0);
   --     Put(Numero_azar);
   --     Put_Line("");
   --  end loop;
   Put_Line("Adivina el numero al azar,Tienes 5 Oportunidades para advinar el numero!");
     Numero_azar:=Integer((Random(G) * 100.00) +1.0);
   while Es_correcto=FALSE and Intentos<5 loop
      declare
         Num_usuario:Integer;
      begin
         Get(Num_usuario);
         if(Num_usuario<Numero_azar) then
            Put_Line("El numero que buscamos es mayor!");
         elsif(Num_usuario>Numero_azar) then
            Put_Line("El numero que buscamos es menor!");
         else
            Put_Line("Acertaste!");
            Es_correcto:= True;
         end if;
      end;

      Intentos:= Intentos+1;

   end loop;
   if(Es_correcto=FALSE) then
    Put_Line("Fallaste! El numero aleatorio era: " & Numero_azar'Image);
   end if;

   null;
end Main;
