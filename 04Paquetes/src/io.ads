with Ada.Text_IO; use Ada.Text_IO;
package io is

   function Get_Non_Empty_Line
     (Prompt : String := "Ingrese un texto no vacio.";Error  : String := "Ha ingresado un texto vacio!, vuelve a intentarlo.") return String;
   
   function Try_Convert_Integer
     (Texto : in String; Texto_entero : out Integer) return Boolean;
   
    function Get_Integer
     (Prompt : String := "Ingrese un texto numerico.";
      Error  : String := "Ingrese un texto numerico.") return Integer;
   
   
   function Get_Integer_Between
     (Min       : Integer; Max : Integer;
      Prompt    : String := "Ingrese un texto numerico.";
      Error     : String := "Ingrese un texto numerico.";
      UnderFlow : String := "Numero muy pequenno, debe ser mayor";
      OverFlow  : String := "Numero muy grande, debe ser menor") return Integer;
   
   procedure Reemplazar(Input: in out String; Caracter_A_Reemplazar : in Character; Caracter_Reemplazo : in Character);
   
   function Try_Convert_Float(Texto : in String; Texto_entero : out Float) return Boolean;
   
   function Get_Float
     (Prompt : String := "Ingrese un texto numerico de tipo float.";
      Error : String := "Ingrese un texto numerico.";
      Separador_Decimales: Character:=',') return Float;
   
   function To_String (Input:Float;Cantidad_Decimales: Integer:=2;Separador_Decimales: Character:=',') return String;
end io;
