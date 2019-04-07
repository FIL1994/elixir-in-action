defmodule Lambda do
  def get_square do
    square = fn x ->
      x * x
    end

    square
  end

  def use_square(a \\ 1) do
    get_square.(a)
  end
end
