defmodule Imports do
  import IO

  def my_function do
    puts("calling imported function")
  end

  def print(a) do
    puts(a)
  end

  defmodule Rectangle do
    def print do
      puts("this is a rectangle")
    end
  end
end

defmodule Alias do
  alias IO, as: MyIO
  # alias Imports.Rectangle, as: Rectangle
  # Elixir allows you to skip the as option since Rectangle is the last part in its name
  alias Imports.Rectangle

  def my_function do
    MyIO.puts("calling imported function")
  end

  def rectangle do
    Rectangle.print()
  end
end
