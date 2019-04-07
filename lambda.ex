defmodule Lambda do
  def get_square do
    square = fn x ->
      x * x
    end

    square
  end

  def use_square(a \\ 1) do
    square = get_square()
    square.(a)
  end

  def print do
    print_element = fn x -> IO.puts(x) end

    Enum.each(
      [1, 2, 3],
      print_element
    )

    Enum.each(
      [1, 2, 3],
      fn x -> IO.puts(x) end
    )
  end

  def capture_operator do
    Enum.each(
      [1, 2, 3],
      # the capture operator takes the full function qualifier (module name, function name and arity)
      # and turns that into a lambda
      &IO.puts/1
    )
  end

  def capture do
    lambda = fn x, y, z -> x * y + z end
    # each argument is referred via &n which identifies the nth argument
    lambda_with_capture = &(&1 * &2 + &3)

    {lambda.(1, 2, 3) === lambda_with_capture.(1, 2, 3), lambda.(1, 2, 3)}
  end

  def closure do
    outside_var = 5

    my_lambda = fn ->
      IO.puts(outside_var)
    end

    my_lambda.()
  end
end
