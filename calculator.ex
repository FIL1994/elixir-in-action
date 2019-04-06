defmodule Calculator do
  # Elixir allows defaults for arguments by using the \\ operator.
  # This generates 2 functions Calculator.sum/1 and Calculator.sum/2)
  def sum(a, b \\ 0) do
    a + b
  end

  def fun(a, b \\ 1, c, d \\ 2) do
    a + b + c + d
  end

  defp private_function do
    IO.puts("private function")
  end

  def function do
    private_function()
  end
end
