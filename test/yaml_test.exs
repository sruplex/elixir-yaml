defmodule YAMLTest do
  use ExUnit.Case
  doctest YAML

  test "decodes YAML and extracts invoice" do
    yaml = """
    invoice: 34843
    """

    assert {:ok, %{"invoice" => 34843}} = YAML.decode(yaml)
  end
end
