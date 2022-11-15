package calendario is

   type Dia_Semana is
     (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   type Meses is
     (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre,
      Octubre, Noviembre, Diciembre);
   type Estacion is (Invierno, Primavera, Verano, Otonno);
   type Dias_Del_Mes is new Integer range 1 .. 31;
   type Años is new Integer range 1_900 .. 2_100;

   type Fecha is record
      Dia : Dias_Del_Mes;
      Mes : Meses;
      Año : Años;
   end record;

   procedure Mostrar_Dias;
   procedure Mostrar_Meses;
   function To_String_Fecha(Date:Fecha) return String;

end calendario;
