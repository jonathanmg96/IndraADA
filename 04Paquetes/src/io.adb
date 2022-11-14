with Ada.Text_IO; use Ada.Text_IO;
package body io is

   function Get_Non_Empty_Line
     (Prompt : String := "Ingrese un texto no vacio.";
      Error : String := "Ha ingresado un texto vacio!, vuelve a intentarlo.")
      return String
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
            Put_Line (Error);
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
      Error : String := "Ingrese un texto numerico.") return Integer
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
            Put_Line (Error);
         end;
      end loop Pedir_num;
   end Get_Integer;

   function Get_Integer_Between
     (Min : Integer; Max : Integer;
      Prompt : String := "Ingrese un texto numerico.";
      Error : String := "Ingrese un texto numerico.";
      UnderFlow : String := "Numero muy pequenno, debe ser mayor";
      OverFlow : String := "Numero muy grande, debe ser menor") return Integer
   is
   begin
      Pedir_num :
      loop
         declare
            Num : Integer := 0;
         begin
            Num := Get_Integer (Prompt);
            if (Num > Min and Num < Max) then
               return Num;
            elsif (Num < Min) then
               Put_Line (UnderFlow & " a " & Min'Image);
            elsif (Num > Max) then
               Put_Line (OverFlow & " a " & Max'Image);
            end if;

         end;
      end loop Pedir_num;
   end Get_Integer_Between;

   procedure Reemplazar
     (Input : in out String; Caracter_A_Reemplazar : in Character;
      Caracter_Reemplazo : in Character)
   is
   begin
      for I in Input'Range loop
         if (Input (I) = Caracter_A_Reemplazar) then
            Input (I) := Caracter_Reemplazo;
         end if;
      end loop;
   end Reemplazar;

   
   function Try_Convert_Float
     (Texto : in String; Texto_entero : out Float) return Boolean
   is
   begin
      
      Texto_entero := Float'Value (Texto);
      return True;
   exception
      when others =>
         return False;

   end Try_Convert_Float;
   
   function Get_Float
     (Prompt : String := "Ingrese un texto numerico de tipo float.";
      Error : String := "Ingrese un texto numerico.";
     Separador_Decimales: Character:=',') return Float
   is
   begin
      Put_Line (Prompt);
      Pedir_num :
      loop
         declare
            Num : Float := 0.0;
            Texto: String:=Get_Line;
         begin
            Reemplazar(Texto,Separador_Decimales,'.');
            if (Try_Convert_Float (Texto, Num)) then
               return Num;
            end if;
            Put_Line (Error);
         end;
      end loop Pedir_num;
   end Get_Float;
   
   --  function To_String (Input:Float;Cantidad_Decimales: Integer:=2;Separador_Decimales: Character:=',') return String is
   --     result : String :=Integer(Float'Floor(Input))'Image & Separador_Decimales & Integer((Input - Float'Floor(Input))*Float(10**Cantidad_Decimales))'Image;
   --  begin
   --     return result;
   --  end To_String;
   --Profe
   function To_String
     (Input:Float;       Cantidad_Decimales : Integer := 2;       Separador_Decimales : Character := ',') return String is
      Result :String := Integer(Float'Floor(Input))'Image & Separador_Decimales & Integer((Input - Float'Floor(Input)) * Float(10 ** Cantidad_Decimales))'Image ;
   begin
      return result;
   end To_String;

end io;
