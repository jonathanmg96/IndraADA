package body profesor_model is

   function Create (Nombre : String) return Profesor is

   begin
      return
        new C_Profesor'
          (C_Persona with Nombre => To_Unbounded_String (Nombre), Cursos_Dictados => 0);
      --return this;
   end Create;

   procedure Dictar_Curso (This : out C_Profesor) is
   begin
      This.Cursos_Dictados := This.Cursos_Dictados + 1;
   end Dictar_Curso;
   
   function To_String (This : in C_Profesor) return String is
   begin
      return
        "Hola soy el profesor " & To_String (This.Nombre) &
        " y tengo este numero de cursos:" & This.Cursos_Dictados'Image;
   end To_String;
end profesor_model;
