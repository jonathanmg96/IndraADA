package body generic_io is

   function Try_Convert
     (Valor_Como_String : in String; Valor_Convertido : out Tipo)
      return Boolean
   is
   begin
      Valor_Convertido := Tipo'Value (Valor_Como_String);
      return True;
   exception
      when others =>
         return False;
   end Try_Convert;

end generic_io;
