defmodule Main do
  def main do
    pedir_texto()
    pedir_numero()
    pedir_float()
  end

  def pedir_texto() do
    "Ingrese su nombre: "
    |> Util.input(:string)
    |> Util.show_message()
  end

  def pedir_numero() do
    x = Util.input("Ingrese un numero: ", :integer)

    # interpolación
    "El numero ingresado es entero: #{is_integer(x)}"
    |> Util.show_message()
  end

  def pedir_float() do
    x = Util.input("Ingrese un numero: ", :float)

    # interpolación
    "El numero ingresado es float: #{is_float(x)}"
    |> Util.show_message()
  end
end

Main.main()
