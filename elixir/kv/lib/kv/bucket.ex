defmodule KV.Bucket do

  @doc """
    Starts a new Bucket
  """
  def start_link do
    Agent.start_link(fn -> %{} end)
  end

  @doc """
    Gets a value by key
  """
  def get(bucket, key) do
    Agent.get(bucket, &Map.get(&1,key))
  end

  @doc """
    Puts a `value` for a given `key` in the bucket
  """
  def put(bucket, key, value)  do
    Agent.update(bucket, &Map.put(&1, key, value))
  end
end
