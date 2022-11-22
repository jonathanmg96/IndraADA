generic
   type Tipo is (<>); --Tipo de dato discreto --> Enumerado, Integer
package generic_io is
   
   Default_Prompt : constant String := "Ingrese un valor";
   Default_Error_Message:constant String := "Ha ingresado un valor incorrecto. Vuelva a intentar.";
   
   function Try_Convert
     (Valor_Como_String : in String; Valor_Convertido : out Tipo) return Boolean;
   
   function Get_Discrete
     (Prompt:String := Default_Prompt;
      Error:String := Default_Error_Message) return Tipo;
   
   
   function To_String(Item:Tipo) return String;
   
   procedure Show_Discrete;
   
   
end generic_io;
