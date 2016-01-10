defmodule Kv.BucketTest do
  use ExUnit.Case, async: true

  test "stores values by key" do
    {:ok, bucket} =Kv.Bucket.start_link
    assert Kv.Bucket.get(bucket, "milk") == nil

    Kv.Bucket.put(bucket, "milk", 3)
    assert Kv.Bucket.get(bucket, "milk") == 3
  end
end
