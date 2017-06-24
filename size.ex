defprotocol Size do
  @doc "Calculates the size (and not the length!) of a data structure"
  def size(data)
end

defimpl Size, for: BitString do
  @doc "Calculates the size (and not the length!) of a data String"
  def size(string), do: byte_size(string)
end

defimpl Size, for: Map do
  @doc "Calculates the size (and not the length!) of a map"
  def size(map), do: map_size(map)
end

defimpl Size, for: Tuple do
  @doc "Calculates the size (and not the length!) of a tuple"
  def size(tuple), do: tuple_size(tuple)
end

defimpl Size, for: MapSet do
  def size(set), do: MapSet.size(set)
end

