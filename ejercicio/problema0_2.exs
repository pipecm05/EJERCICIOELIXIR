defmodule EmpresaOnce do
  def mostrar_bienvenida do
    mensaje_bienvenida()
  end

  #Funcion privada
  defp mensaje_bienvenida do
    "Bienvenido a la empresa Once Ltda"
    |> IO.puts()
  end
end


EmpresaOnce.mostrar_bienvenida()
