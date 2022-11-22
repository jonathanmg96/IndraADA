package body alumno_model is

   --Constructor, los cometarios seria otra manera de implementacion del constructor
   function Create (Nombre : String) return Alumno
   is
      
   begin
      return
        new C_Alumno'(Nombre => To_Unbounded_String (Nombre),Notas => Empty);
      --return this;
   end Create;

   function Get_Nombre (This : C_Alumno) return String is
   begin
      return To_String (This.Nombre);
   end Get_Nombre;

   procedure Rendir_Examen (This : out C_Alumno; Examen : Nota) is
   begin
      this.Notas.Append (Examen);
   end Rendir_Examen;
   function Calcular_Promedio (This : out C_Alumno) return Float is
      Total : Integer :=0;
   begin
      for Valor of This.Notas loop
         Total := Total + Integer(Valor);

      end loop;
      return Float (Total) / Float(Length(This.Notas));
   end Calcular_Promedio;

end alumno_model;
