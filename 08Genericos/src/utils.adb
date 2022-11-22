package body utils is

   procedure Swap (Left, Right : in out T) is
      Aux : T := Left;
   begin
      Left:= Right;
      Right := Aux;
   end Swap;
   


end utils;
