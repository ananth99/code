# Random Elixir enumerations and genrators.
# Author Ananth Madhavan 8th Jan 2016

# Double the val for each key using generators, into and Enum
for {key, val} <- %{"a": 2, "b": 3}, into: %{} do: {key, val * val}
Enum.into(Enum.map(%{a: 1, b: 2}, fn{key, val} -> {key, val * val} end), %{})

# Filter specific {k,v} from map where val greater than 12
Enum.filter %{a: 13, b: 14, c: 1, d: 54}, fn{key, val} -> val > 12 end
