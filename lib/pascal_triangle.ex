defmodule PascalTriangle do
  import Enum

  def main(args) do
    get_lines(8)
    |> IO.inspect
  end

  def get_lines(num) do
    reduce 1..num, [], fn (actual, acc) ->
      acc ++ get_line(List.last(acc))
    end
  end

  def get_line(nil), do: [[1]]
  def get_line(prev) do
    [[1] ++ map(chunk(prev, 2, 1), &sum/1) ++ [1]]
  end
end
