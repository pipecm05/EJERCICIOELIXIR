defmodule Util do
  # Pedir texto desde Java (JOptionPane)
  def input(message, type) when type == :string do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", message])
    |> elem(0)
    |> String.trim()
  end

  # Pedir número entero
  def input(message, type) when type == :integer do
    case input(message, :string) do
      "" -> 0
      str -> String.to_integer(str)
    end
  end

  # Pedir número flotante
  def input(message, type) when type == :float do
    case input(message, :string) do
      "" -> 0.0
      str -> String.to_float(str)
    end
  end

  # Mostrar mensaje con JOptionPane
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
    :ok
  end
end
