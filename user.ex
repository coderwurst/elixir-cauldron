defmodule User do
  @moduledoc """
  User Object to include name and age attributes
  """
  defstruct name: "John", age: 27
end

defimpl Size, for: User do
  def size(_user), do: 2
end
