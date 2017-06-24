defmodule Triple do
  @moduledoc """
  Used to generate Pythagorean triples (a*a + b*b = c*c)
  n <- [1, 2, 3, 4] is an example of a generator
  in example below, filters are used to determine if eg,
  a*a + b*b == c*c
  """
  def pythagorean(n) when n > 0 do
    for a <- 1..n,
        b <- 1..n,
        c <- 1..n,
        a + b + c <= n,
        a*a + b*b == c*c,
        do: {a, b, c}
  end
end
