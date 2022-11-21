with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with io;use io;
with generic_io;
procedure Main is
begin
   --  Insert code here.
   --  declare
   --     type Arreglo_Entero is array (Positive range <>) of Integer;
   --
   --     package Integer_Array_List is new Ada.Containers.Vectors
   --       (Element_Type => Integer, Index_Type => Positive);
   --     use Integer_Array_List;
   --
   --     Arreglo : Arreglo_Entero (1 .. 3);
   --     Lista   : Integer_Array_List.Vector;
   --  begin
   --
   --     Arreglo (1) := 32;
   --     Arreglo (2) := 33;
   --     Arreglo (3) := 50;
   --     Put_Line ("El contenido del arreglo es:");
   --     for Valor of Arreglo loop
   --        Put_Line (Valor'Image);
   --     end loop;
   --     Put_Line ("");
   --     --Lista dinamica
   --     Append (Lista, 40);
   --     Append (Lista, 41);
   --     Append (Lista, 45);
   --     Put_Line ("El contenido de la lista es:");
   --     for Valor of Lista loop
   --        Put_Line (Valor'Image);
   --     end loop;
   --     Put_Line ("");
   --
   --  end;
   --  declare
   --     type Entrada_Nota is new Integer range 0 .. 10;
   --     subtype Nota is Integer range 1 .. 10;
   --     package Integer_Array_List is new Ada.Containers.Vectors
   --       (Element_Type => Nota, Index_Type => Positive);
   --     use Integer_Array_List;
   --     Lista_Notas   : Integer_Array_List.Vector;
   --     Dato_entrada : Entrada_Nota;
   --  begin
   --     loop
   --        Dato_entrada:=Entrada_Nota(Get_Integer_Between(Integer(Entrada_Nota'First),Integer(Entrada_Nota'Last),"Di una Nota y 0 para terminar!"));
   --        if(Dato_entrada/=0) then
   --           Append (Lista_Notas, Nota(Dato_entrada));
   --        end if;
   --        exit when (Dato_entrada=0);
   --     end loop;
   --
   --     Put_Line ("Tus notas son:");
   --
   --     for Valor of Lista_Notas loop
   --           Put(Valor'Image & ",");
   --
   --     end loop;
   --     Put_Line ("");
   --    end;
   declare

   begin
      end;
   null;
end Main;
