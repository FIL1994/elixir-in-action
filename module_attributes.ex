defmodule Circle do
  # defines a module attribute
  @moduledoc "Implements basic circle functions"
  @pi 3.14159

  # Elixir registers some module attributes by default
  # @moduledoc and @doc can be used to provide documentation for modules and functions
  # Code.fetch_docs(Circle)
  @doc "Computes the area of a circle"
  @spec area(number) :: number
  def area(r), do: r * r * @pi

  @doc "Computes the circumference of a circle"
  # typespecs allow you to provide type information
  @spec circumference(number) :: number
  def circumference(r), do: 2 * r * @pi

end
