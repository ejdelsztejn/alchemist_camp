defmodule AlchemyMarkdownTest do
  use ExUnit.Case
  doctest AlchemyMarkdown

  test "italicizes" do
    string = "Something *important*"
    assert AlchemyMarkdown.to_html(string) =~ "Something <em>important</em>"
  end

  test "expands big tags" do
    str = "Some ++big++ words!"
    assert AlchemyMarkdown.to_html(str) =~ "<big>big</big> words"
  end

  test "expands small tags" do
    str = "Some --small-- words!"
    assert AlchemyMarkdown.to_html(str) =~ "<small>small</small> words"
  end
end
