defmodule MulticlauseFunctions do
  # first clause of area/1
  def area({:rectangle, a, b}) do
    a * b
  end

  # second clause of area/1
  def area({:square, a}) do
    a * a
  end

  # third clause of area/1
  def area({:circle, r}) do
    r * r * 3.14
  end

  # if none of the first 3 clauses match, the final clause is called.
  # the runtime tries the clauses in the order you define them
  def area(unknown) do
    {:error, {:unknown_shape, unknown}}
  end
end
