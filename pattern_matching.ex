defmodule PatternMatching do
  def match_tuple do
    {name, age} = {"Bob", 25}
    {name, age}
  end

  def time do
    {date, time} = :calendar.local_time()
    {year, month, day} = date
    {hour, minute, second} = time
    {year, month, day, hour, minute, second}
  end

  def get_time do
    # _ denotes an anonymouse variable
    # _date isn't bound to any variable
    {_date, time} = :calendar.local_time()
    time
  end

  def get_hour do
    {_, {hour, _, _}} = :calendar.local_time()
    hour
  end

  def compound_match do
    {_, {hour, _, _}} = date_time = :calendar.local_time()
    {hour, date_time}
  end

  def pin_operator do
    expected_name = "Bob"

    # using ^expected_name means you expect the value to be in the same position in the right hand term
    {^expected_name, _} = {"Bob", 25}

    # this will fail
    {^expected_name, _} = {"Alice", 30}
  end

  def match_list do
    [first, second, third] = [1, 2, 3]
    [first, second, third]
  end

  def head_tail do
    [head | tail] = [1, 2, 3]
    head
  end

  def min do
    [min | _] = Enum.sort([3, 20, 4, 2])
    min
  end

  def match_map do
    %{name: name, age: age} = %{name: "Bob", age: 25}
    %{age: age, name: name}
  end
end
