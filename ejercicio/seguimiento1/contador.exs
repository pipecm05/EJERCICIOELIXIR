@moduledoc """
  Módulo que cuenta la cantidad de caracteres de una palabra ingresada por el usuario.
  """
defmodule Contador do

  @doc """
  Retorna la cantidad de caracteres de un texto dado.
  """
  def contar(texto) do
    String.length(texto)
  end

  @doc """
  Solicita al usuario una palabra y muestra la cantidad de caracteres que contiene.
  """
  def contar do
    Util.input_data("ingrese la palabra: ")
    |> contar()
    |> Integer.to_string()
    |> Util.show_message()
  end
end

# Ejecuta el proceso principal
Contador.contar()
