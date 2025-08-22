defmodule Empleado do
  def calcular_salario do
    # Capturar datos con Util
    nombre = Util.input_data("Ingrese el nombre del empleado:")
    horas  = Util.input_data("Ingrese las horas trabajadas:") |> String.to_integer()
    valor  = Util.input_data("Ingrese el valor por hora:") |> String.to_integer()

    # Calcular salario
    salario = horas * valor

    # Mostrar resultado con Util
    Util.show_message("El salario neto de #{nombre} es: $#{salario}")
  end
end

# Ejecutar
Empleado.calcular_salario()
