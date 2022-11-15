package calendario is

   type Dia_Semana is
     (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   type Meses is
     (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre,
      Octubre, Noviembre, Diciembre);
   type Estacion is (Invierno, Primavera, Verano, Otonno);
   
   procedure Mostrar_Dias;
   procedure Mostrar_Meses;

end calendario;
