defmodule Empleado do
  @moduledoc """
  Módulo para calcular el salario neto de un empleado.
  Si trabaja más de 160 horas, las horas extra se pagan al 125%.
  """

  @doc """
  Calcula el salario neto y lo muestra en un cuadro de diálogo.
  """
  def calcular_salario do
    # Capturar datos desde cuadros de diálogo
    nombre = Util.input_data("Ingrese el nombre del empleado:")
    horas  = Util.input_data("Ingrese las horas trabajadas:") |> String.to_integer()
    valor  = Util.input_data("Ingrese el valor por hora:") |> String.to_integer()

    # Salario base (máx. 160h)
    salario_base =
      if horas > 160 do
        160 * valor
      else
        horas * valor
      end

    # Horas extra al 125%
    horas_extra =
      if horas > 160 do
        (horas - 160) * trunc(valor * 1.25)
      else
        0
      end

    # Salario neto
    salario_neto = salario_base + horas_extra

    # Mostrar el resultado
    Util.show_message("El salario neto de #{nombre} es: $#{salario_neto}")
  end
end

# Ejecutar el cálculo
Empleado.calcular_salario()
