defmodule AlchemyMarkdownTest do
  use ExUnit.Case
  doctest AlchemyMarkdown

  test "greets the world" do
    assert AlchemyMarkdown.hello() == :world
  end

  test "italicizes" do
    string = "Something *important*"
    assert AlchemyMarkdown.to_html(string) == "Something <em>important</em>"
  end
end
