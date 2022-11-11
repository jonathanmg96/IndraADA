with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   -- Nombre : String := Get_Line;
   --  function Get_Non_Empty_Line return String is
   --     vacio : Boolean := False;

   --  while vacio=False loop
   --     Put_Line("Dime un nombre");
   --   declare
   --  Nombre : String := Get_Line; -- Declaracion implicita
   --  --Nombre : String(1..100); --Declaracion explicita
   --     begin
   --        if Nombre'Length>0 then
   --           vacio:= True;
   --           return Nombre;
   --        end if;
   --        end;
   --  end loop;
   function Get_Non_Empty_Line
     (Prompt : String := "Ingrese un texto no vacio.") return String
   is
   begin
      Put_Line (Prompt);
      loop
         declare
            Texto : String := Get_Line;
         begin
            if (Texto'Length > 0) then
               return Texto;
            end if;
            Put_Line
              ("Ha Ingresado un texto vacio, vuelva a intentarlo"); --podriamos quitar este mensaje hardcodeado colocandolo como parametro.
         end;
      end loop;
   end Get_Non_Empty_Line;

   function Try_Convert_Integer
     (Texto : in String; Texto_entero : out Integer) return Boolean
   is
   begin

      Texto_entero := Integer'Value (Texto);
      return True;
   exception
      when others =>
         return False;

   end Try_Convert_Integer;

   function Get_Integer
     (Prompt : String := "Ingrese un texto numerico.";
      Error  : String := "Ingrese un texto numerico.") return Integer
   is
   begin
      Put_Line (Prompt);
      Pedir_num :
      loop
         declare
            Num : Integer := 0;
         begin
            if (Try_Convert_Integer (Get_Line, Num)) then
               return Num;
            end if;
            Put_Line
              (Error);--Put_Line("Ha Ingresado un valor no numerico, vuelva a intentarlo"); --podriamos quitar este mensaje hardcodeado colocandolo como parametro.
         end;
      end loop Pedir_num;
   end Get_Integer;

   -- Funcion del profe
   --  function Get_Integer
   --    (Prompt : String := "Ingresa un numero";
   --     Error  : String := "No ha ingresado un numero, vuelva a intentarlo")
   --     return Integer
   --  is
   --     Result : Integer := 0;
   --  begin
   --     Put_Line (Prompt);
   --     while (not (Try_Convert_Integer (Get_Line, Result))) loop
   --        Put_Line (Error);
   --     end loop;
   --     return Result;
   --
   --  end Get_Integer;

   function Get_Integer_Between
     (Min       : Integer; Max : Integer;
      Prompt    : String := "Ingrese un texto numerico.";
      Error     : String := "Ingrese un texto numerico.";
      UnderFlow : String := "Numero muy pequeño, debe ser mayor";
      OverFlow  : String := "Numero muy grande, debe ser menor") return Integer
   is
   begin
      Pedir_num :
      loop
         declare
            Num : Integer := 0;
         begin
            Num := Get_Integer(Prompt);
            if (Num > Min and Num < Max) then
               return Num;
            elsif (Num < Min) then
               Put_Line (UnderFlow);
            elsif (Num > Max) then
               Put_Line (OverFlow);
            end if;
            --Put_Line(Error);--Put_Line("Ha Ingresado un valor no numerico, vuelva a intentarlo"); --podriamos quitar este mensaje hardcodeado colocandolo como parametro.
         end;
      end loop Pedir_num;
   end Get_Integer_Between;

begin
   --  Insert code here.
   declare
   --Nombre : String := Get_Non_Empty_Line;
   --Edad : Integer := 0;
   begin
      --Put_Line ("Hola " & Nombre);
      --Put_Line ("Ingrese su edad ");
      --  if Try_Convert_Integer (Get_Line, Edad) then
      --     Put_Line ("Tienes " & Edad'Image);
      --  else
      --     Put_Line ("No ingresaste un numero boludo! ");
      --  end if;
      --Edad := Get_Integer;
      --Put_Line ("Su numero es: " & Get_Integer'Image);
      Put_Line ("Su numero es: " & Get_Integer_Between (20, 30)'Image);

   end;
   null;
end Main;
