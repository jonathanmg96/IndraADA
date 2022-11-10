with Ada.Text_IO;       use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure Main is
   procedure Put_Nice_Line (Text : String; Caracter : Character := '*') is
   begin
      Put_Line (Text);
      Put_Line (Text'Length * Caracter);
   end Put_Nice_Line;
   procedure Reverse_Line (Texto : String) is
   begin
      for I of reverse Texto loop
         Put (I);
      end loop;
      Put_Line("");
   end Reverse_Line;

   procedure Hacker_lane
     (Texto : String; I : Character := '1'; A : Character := '4';
      E     : Character := '3'; S : Character := '5'; O : Character := '0')
   is
   begin
      for C of Texto loop
         case C is
            when 'i' | 'I' =>
               Put (i);
            when 'a' | 'A' =>
               Put (a);
            when 'e' | 'E' =>
               Put (e);
            when 's' | 'S' =>
               Put (s);
            when 'o' | 'O' =>
               Put (o);
            when others =>
               Put (C);
         end case;
      end loop;
      Put_Line("");
   end Hacker_lane;

   function Area_rectangulo (Lado_mayor : Float;Lado_menor : Float) return Float is
   begin
      return Lado_mayor*Lado_menor;
   end Area_rectangulo;
   Area: Float;
begin
   --  Insert code here.
   --  Put_Nice_Line ("Curso ADA", '-');
   --  Put_Nice_Line
   --    (Text => "Segunda forma de llamar subprograma!", Caracter => '=');
   --  Reverse_Line ("Hola");
   --  Hacker_lane ("Hola");
   Area:= Area_rectangulo(2.0,4.0);
   Put(Area, Exp => 0, Aft => 2);
   null;
end Main;

