defmodule Once.Bienvenida do

  @empresa "Once Ltda"

  #Funcion publica
  def mostrar do
    IO.puts("Bienvenido a la empresa #{@empresa}")
  end
end

Once.Bienvenida.mostrar()
