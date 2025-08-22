defmodule Util do #modulo Util
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  def pedir_informacion() do
    IO.gets("ingrese su nombre:")
    |> String.trim()
  end
end
