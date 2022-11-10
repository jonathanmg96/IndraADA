with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Fixed; use Ada. Strings.Fixed;
procedure Main is
   Edad : Integer := 19;
   Default_Mayoria_Edad : constant := 18;
   Default_Edad_Mayor : constant := 60;
begin
   --  --  Insert code here.
   --  Put_Line("Introduzca su edad:");
   --  --Get(Edad);
   --  Edad:=Integer'Value(Get_Line);
   --  if(Edad >=Default_Edad_Mayor) then
   --     Put_Line("Usted es un jubilado");
   --     --elsif(Edad >=Default_Mayoria_Edad) then
   --  elsif(Edad in Default_Mayoria_Edad..Default_Edad_Mayor) then
   --     --elsif(Edad in 18..60)
   --     Put_Line("Usted es mayor de edad");
   --  else
   --     Put_Line("Usted NO es mayor de edad");
   --  end if;
   --  declare
   --     Numero:Integer;
   --  begin
   --     Put_Line("Dime un numero:");
   --     Get(Numero);
   --     --  if((Numero mod 2)=0) then
   --     --     Put_Line("El numero" & Numero'Image &" es par");
   --     --  else
   --     --     Put_Line("El numero" & Numero'Image &" es impar");
   --     --  end if;
   --     Put_Line(if(Numero mod 2)=0 then "Es par" else "Es impar");
   --  end;
   --
   --Estructura FOR
   --  Put_Line("Dime como te llamas:");
   --  declare
   --     Repetir:Integer;
   --     Nombre:String:=Get_Line;
   --  begin
   --     Put_Line("Dime cuantas veces quieres que te salude:");
   --     Get(Repetir);
   --     --  for i in 0..Repetir loop
   --     --     --se puede utilizar reverse
   --     --     delay 1.0;
   --     --     Put_Line("Hola " & Nombre);
   --     --  end loop;
   --     Put_Line(Repetir * ("Hola!" & Nombre)); -- FOR en linea
   --  end;

   --Estructura WHILE
   --  declare
   --     N:Integer;
   --  begin
   --     Put_Line("Ingresa un numero:");
   --     Get(N);
   --     while N>0 loop
   --        N:=N/2;
   --        Put_Line("Dividido 2 es: " & N'Image);
   --     end loop;
   --
   --  end;
   --  declare
   --     Numero:Integer;
   --     Total:Integer:=0;
   --  begin
   --     Put_Line("Di un numero con el que empezar:");
   --     Get(Numero);
   --     while Numero/=0 loop
   --        Total:=Total+Numero;
   --        Put_Line("Di un numero para sumar, 0 para terminar");
   --        Get(Numero);
   --     end loop;
   --     Put_Line("La suma total es: " & Total'Image);
   --     end;
   --  declare
   --     Numero:Integer;
   --     Total:Integer:=0;
   --     Default_Tope_Max : constant Integer :=100;
   --  begin
   --     loop
   --        Put_Line("Di un numero para sumar, 0 para terminar");
   --        Get(Numero);
   --        exit when (Numero=0);
   --        Total:=Total+Numero;
   --        exit when (Total>=Default_Tope_Max);
   --     end loop;
   --     Put_Line("La suma total es: " & Total'Image);
   --     end;
   --  declare
   --     Nombre:String:="";
   --  begin
   --     loop
   --        Put_Line("Di tu nombre para saludarte, vacio para terminar");
   --        declare
   --           Nombre:String:=Get_Line;
   --        begin
   --           exit when (Nombre="");
   --           Put_Line("Hola " & Nombre);
   --        end;
   --     end loop;
   --  end;

   --SWITCH
   declare
      Nota: Integer;
   begin
      Put_Line("ingrese su nota del examen!:");
      Get(Nota);
      case Nota is
      when 0 =>Put_Line("Habla con el rector!");
         when 1..4=>Put_Line("Suspenso!");
         when 5..9=>Put_Line("Aprobado!");
         when 10=>Put_Line("MH!");
         when others => Put_line("Nota incorrecta!");

      end case;
   end;
   null;

end Main;
