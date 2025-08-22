defmodule Eco do
  @moduledoc """
  Módulo que convierte a mayúsculas una palabra ingresada por el usuario.
  """

  @doc """
  Convierte el texto recibido a mayúsculas.
  """
  def pasar_mayuscula(texto) do
    String.upcase(texto)
  end

  @doc """
  Solicita al usuario una palabra y muestra el resultado en mayúsculas.
  """
  def mayuscula() do
    Util.input_data("ingrese la palabra: ")
    |> pasar_mayuscula()
    |> Util.show_message()
  end

end

# Ejecuta el proceso principal
Eco.mayuscula()
