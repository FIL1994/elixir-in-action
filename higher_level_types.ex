defmodule RangeExample do
  def example do
    range = 1..10
    {2 in range, -1 in range}
  end

  def print do
    Enum.each(
      1..3,
      &IO.puts/1
    )
  end
end

defmodule KeywordList do
  def keyword_list do
    days = [monday: 1, tuesday: 2, wednesday: 3]
    Keyword.get(days, :monday) === days[:monday]
  end

  # private function
  # keyword lists are useful for passing optional arguments
  defp my_fun(arg1, opts \\ []) do
    arg1 * (opts[:arg3] || 7) * (opts[:arg4] || 1)
  end

  def fun() do
    [my_fun(1, arg3: 5), my_fun(1), my_fun(1, arg4: 11), my_fun(1, arg3: 5, arg4: 11)]
  end
end

defmodule MapSetExample do
  def get_days do
    MapSet.new([:monday, :tuesday, :wednesday])
  end

  def verify do
    days = get_days()
    MapSet.member?(days, :monday)
  end

  def add do
    days = get_days()
    MapSet.put(days, :noday)
  end

  # A MapSet is enumerable
  def print do
    Enum.each(add(), &IO.puts/1)
  end
end
