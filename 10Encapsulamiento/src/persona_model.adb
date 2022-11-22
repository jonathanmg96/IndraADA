package body persona_model is

   procedure Saludar (This : C_Persona) is
   begin
      Put_Line ("Hola Soy " & This.Get_Nombre & " " & This.Get_Apellido);
   end Saludar;

   --Constructor, los cometarios seria otra manera de implementacion del constructor
   function Create (Nombre : String; Apellido: String) return Persona is
   -- This := new Persona;
   begin
      return new C_Persona'(Nombre => To_Unbounded_String (Nombre),Apellido =>To_Unbounded_String (Apellido), Riqueza => 0.0);
      --This.Nombre := Nombre;
      --return this;
   end Create;
   
   function Get_Nombre (This: C_Persona) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   function Get_Apellido (This: C_Persona) return String is
   begin
      return To_String(This.Apellido);
   end Get_Apellido;
   
   function Get_Riqueza (This: C_Persona) return Dinero is
   begin
      return this.Riqueza;
   end Get_Riqueza;
   
   procedure Set_Riqueza (This :out C_Persona; Value : Dinero) is
   begin
      This.Riqueza := Value;
   end Set_Riqueza;
   
end persona_model;
