defmodule AlchemyMarkdown do
  def to_html(markdown) do
    Earmark.as_html!((markdown) || "", %Earmark.Options{smartypants: false})
      |> big
      |> small
      |> hrs
  end

  def small(text) do
    Regex.replace(~r/\-\-(.*)\-\-/, text, "<small>\\1</small>")
  end

  def big(text) do
    Regex.replace(~r/\+\+(.*)\+\+/, text, "<big>\\1</big>")
  end

  def hrs(text) do
    Regex.replace(~r{(^|\r\n|\r|\n)([-*])( *\2 *)+\2}, text, "\\1<hr />")
  end

  def test_str do
    """
    # Main title of my doc

    ## A less important header

    I *really* disagree with you!

    You can **strongly** emphasize text

    You can make lists of

    1) One
    2) Two
    3) Three

    things ++big things!++ --small things!--
    """
  end
end
