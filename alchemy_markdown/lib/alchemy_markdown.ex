defmodule AlchemyMarkdown do
  def to_html(markdown) do
    Earmark.as_html(markdown) || ""), %EarMark.Options(smartypants: false)
  end

  def hello do
    :world
  end
end
