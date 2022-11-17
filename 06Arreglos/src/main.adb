with io;                      use io;
with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;   use Ada.Strings.Unbounded;
with Ada.Characters.Handling; use Ada.Characters.Handling;
with Ada.Float_Text_IO;       use Ada.Float_Text_IO;
procedure Main is

begin
   --  Arreglos
   --  declare
   --     type Arreglo_Numeros is
   --       array (1 .. 3) of Positive; --forma explicita de crear un array.
   --     Numeros     : Arreglo_Numeros;
   --     Mas_Numeros : Arreglo_Numeros := (10, 20, 30); --No hay que pasarse con el numero de elementos
   --                                                    --ya que daria error ene ejecucion.
   --
   --     Aun_Mas_Numeros : Arreglo_Numeros := (2 => 100, others=> 1);
   --  begin
   --     Numeros (1) := 3;
   --     Numeros (2) := 5;
   --     Numeros (3) := 19;
   --
   --     for I in Numeros'Range loop
   --        Put_Line
   --          ("El elemento" & I'Image & " tiene el valor: " & Numeros (I)'Image);
   --     end loop;
   --     Put_Line
   --          ("");
   --     Put
   --       ("[");
   --     for I of Mas_Numeros loop
   --        if I = Mas_Numeros(Mas_Numeros'Length)  then
   --           Put(I'Image);
   --        else
   --           Put(I'Image & ",");
   --        end if;
   --     end loop;
   --     Put
   --       ("]");
   --     Put_Line
   --       ("");
   --
   --      Put("Todavia mas numeros (");
   --     for I in Aun_Mas_Numeros'First..Aun_Mas_Numeros'Last loop
   --        Put(Aun_Mas_Numeros(I)'Image);
   --        Put(if (I /= Aun_Mas_Numeros'Last) then "," else "");
   --     end loop;
   --     Put(")");
   --     Put_Line("");
   --  end;

   --Ejercicio
   --
   --  declare
   --     type Nota is new Integer range 1 .. 10;
   --  type Notas is array (1 .. Get_Integer("Cuantos examenes has tenido?")) of Nota;
   --  Lista_Examenes : Notas;
   --  begin
   --     for I in Lista_Examenes'Range loop
   --        Lista_Examenes(I) := Nota(Get_Integer("Ingresa una nota"));
   --     end loop;
   --
   --
   --        Put
   --       ("Tus notas del curso han sido[");
   --     for I of Lista_Examenes loop
   --        if I = Lista_Examenes(Lista_Examenes'Length)  then
   --           Put(I'Image);
   --        else
   --           Put(I'Image & ",");
   --        end if;
   --     end loop;
   --     Put
   --       ("]");
   --     Put_Line
   --       ("");
   --  end;
--     declare
--        type Dia_Semana is
--          (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
--        subtype Fin_De_Semana is Dia_Semana range Sabado .. Domingo;
--        Dias_En_Ingles : array (Dia_Semana) of Unbounded_String :=
--          (To_Unbounded_String ("Monday"), To_Unbounded_String ("Tuesday"),
--           To_Unbounded_String ("Wednesday"), To_Unbounded_String ("Thursday"),
--           To_Unbounded_String ("Friday"), To_Unbounded_String ("Saturday"),
--           To_Unbounded_String ("Sunday"));
--     begin
--        Put_Line ("Ingrese un dia de la semana!");
--        for dia in Dia_Semana loop
--           Put(dia'Image);
--           Put(",");
--        end loop;
--        declare
--     Dia:Dia_Semana := Dia_Semana'Value(Get_Line);
--  begin
--     Put_Line(Dia'Image & " en ingles es : " & To_String(Dias_En_Ingles(Dia)));
--  end;
--
--     end;
   --  declare
   --     type Nota is range 1 .. 10;
   --     type Lista_Notas is array (Positive range <>) of Nota with
   --        Default_Component_Value => 10;
   --     --   Notas : Lista_Notas(1..3);
   --     Notas : Lista_Notas := (2, 3, 4, 5, 6, 7, 8, 9);
   --  begin
   --     for Nota of Notas loop
   --        Put_Line (Nota'Image);
   --     end loop;
   --
--  end;
   declare
      type Nota is new Integer range 1 .. 10;
      Limite : Integer := Get_Integer ("Cuantos examenes has tenido?");
      type Notas is array (Positive range <>) of Nota with
         Default_Component_Value => 10;
      Lista_Examenes : Notas (1 .. Limite);

      type Calificacion is
        (Insuficiente, Reprobado, Aprobado, Bueno, Muy_Bueno, Exelente);

      Nota_To_Califiacion : array (Nota) of Calificacion :=
        (1  => Insuficiente, 5..7 => Aprobado, 8 => Bueno, 9 => Muy_Bueno,
         10 => Exelente, others => Reprobado);
      --

      procedure Cargar_Datos (List : out Notas) is

      begin
         for I in List'Range loop
            List (I) := Nota (Get_Integer ("Ingresa una nota"));
         end loop;
      end Cargar_Datos;
      procedure Listar_Notas (List : in Notas) is
      begin
         Put ("Tus notas del curso han sido[");
         for I in List'Range loop
            --  if I = List (List'Length) then
            --     Put (I'Image);
            --  else
            --     Put (I'Image & ",");
            --  end if;
            Put_Line (I'Image & "(" & List (I)'Image & ")");
         end loop;
         Put ("]");
         Put_Line ("");
      end Listar_Notas;

      function Nota_Mas_Alta (List : in Notas) return Nota is
         Max : Nota := Nota'First;
      begin
         for Examen of List loop
            if (Max < Examen) then
               Max := Examen;
            end if;
         end loop;
         return Max;
      end Nota_Mas_Alta;
      function Nota_Media (List : in Notas) return Float is
         Total : Float := 0.0;
      begin
         for Examen of List loop
            Total := Total + Float (Examen);
         end loop;
         --Put_Line(Total'Image);
         return Total / Float (List'Length);
      end Nota_Media;

      --  procedure Mostrar_Notas(Lista : in Lista_Examenes) is
      --  begin
      --     Put_line("Has sacado las siguientes notas:");
      --     for Examen of Lista loop
      --        Put_line(Examen'Image);
      --     end loop;
      --  end Mostrar_Notas;
      function Replace_Character
        (Input : in String; From : Character; To : Character) return String
      is

         Result : String := Input;
      begin
         for I in Result'Range loop
            if Result (I) = From then
               Result (I) := To;
            end if;
         end loop;
         return Result;
      end Replace_Character;
      --Ejercicio Notas

      function To_String (Item : Calificacion) return String is
         Result : String := Item'Image;
      begin
         --  for I in Result'Range loop
         --     if I > 1 then
         --        Result (I) := To_Lower (Result (I));
         --     end if;
         --
         --  end loop;
         --  return Result;
         return
           Result (1 .. 1) &
           To_Lower
             (Replace_Character (Result (2 .. Item'Image'Length), '_', ' '));
      end To_String;

      procedure Mostrar_Notas (Lista : in Notas; Promp : String:="Has sacado las siguientes notas:") is
      begin
         Put_Line (Promp);
         for Examen of Lista loop
            Put_Line
              (Examen'Image & " (" & To_String (Nota_To_Califiacion (Examen)) &
               ")");
         end loop;
      end Mostrar_Notas;

      function Examenes_Aprobados (Lista : in Notas; Nota_Aprobado : Nota :=5) return  Notas is
         Aprobados : Notas (1..Lista'Length);
         Cont : Integer := 0;
      begin
         for I of Lista loop
            if (I >= Nota_Aprobado) then
               Cont := Cont+1;
               Aprobados(Cont) := I;
            end if;
         end loop;
         return Aprobados(1..Cont);
      end Examenes_Aprobados;

   begin

      Cargar_Datos (Lista_Examenes);

      Listar_Notas (Lista_Examenes);
      Put_Line
        ("La nota mas alta es: " & Nota_Mas_Alta (Lista_Examenes)'Image);
      Put ("La nota media es: ");
      Put (Nota_Media (Lista_Examenes), Exp => 0, Aft => 2);
      Put_Line ("");
      --
      Mostrar_Notas (Lista_Examenes);
      Put_Line ("");
      Mostrar_Notas(Examenes_Aprobados(Lista_Examenes),"Estas son tus notas aprobadas!:");
      --Put_Line(Mostrar_Media(Lista_Examenes));
      -- Ejemplo cpon el Between
      --  declare
      --     type Nota is new Integer range 1..10 with Default_Value => 5;
      --     type Examenes is array(Positive range <>) of Nota with Default_Component_Value => 10;
      --
      --     Examen : Examenes(1..Get_Integer("¿Cuantos exámenes has hecho?"));
      --
      --     begin
      --        for I in Examen'Range loop
      --           Examen(I) := Nota(Get_Integer_Between(
   --                                     "Introduce una nota para el examen",
      --                                     Integer(Nota'Last),
      --                                     Integer(Nota'First)));
      --
      --           -- Lista_Examenes(I) := Nota(Get_Integer("Introduce una nota para el examen"));
      --        end loop;
      --
      --        Put("Tus notas del curso han sido (");
      --
      --        for I in Examen'First..Examen'Last loop
      --           Put(Examen(I)'Image);
      --           Put(if (I/=Examen'Last) then "," else "");
      --        end loop;
      --
      --        Put(")");
      --        Put_Line("");
      --     end;
   end;
   null;
end Main;
