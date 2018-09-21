defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def double(x) do
    2 * x
  end

  def calc(expr) do
    # This is more complex, delegate to lib/practice/calc.ex
    Practice.Calc.calc(expr)
  end

  def factor(x) do
      factor(x, 2, [])
  end

  def factor(x, acc, list) when x == 1 do
    Enum.sort(list)
  end

  def factor(x, acc, list) do

    if is_string(x) do
      x = String.to_integer(x)
    end

    if rem(x, acc) == 0 do
      factor(div(x,acc), 2, [acc | list])
    else
      factor(x, acc + 1, list)
    end
  end

  def palindrome(str) do
    rev = Enum.reverse(String.graphemes(str))
    if rev == String.graphemes(str) do
      True
    else
      False
    end
  end

end
