defmodule Geometry do
  def area(a, b) do
    a * b
  end

  # if a function is short, you can use a single line
  def square_area(a), do: a * a

  # if a funciton has not arguments, you can omit the parantheses
  def run do
  end

  # two functions with the same name, but different arities (number of arguments a function receives) are 2 different functions
  def area(a), do: a * a
end

defmodule Help do
  def area(a, b) do
    area = Geometry.area(a, b)
    area
  end

  def area_of_2_and_3 do
    # parantheses are optional (note: the formatter will add them back)
    # area 2, 3
    area(2, 3)
  end

  def print do
    # pipeline operator
    5 |> Geometry.square_area() |> Integer.to_string() |> IO.puts()
  end

  def print_without_pipeline do
    IO.puts(Integer.to_string(Geometry.square_area(5)))
  end

  def quit do
    System.halt()
  end
end
