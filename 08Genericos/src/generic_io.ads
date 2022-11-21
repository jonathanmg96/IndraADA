generic
   type Tipo is (<>); --Tipo de dato discreto --> Enumerado, Integer
package generic_io is

   function Try_Convert
     (Valor_Como_String : in String; Valor_Convertido : out ) return Boolean;
   

end generic_io;
