# Challenge 1
# See if you can make a program that asks the user's name
# and then greets them by name... and has a special
# response for users who enter your name.

defmodule Greeter do
  def greet do
    name = IO.gets("What is your name? ") |> String.trim()
    if name == "Jessye" do
      IO.puts("Hey, Jessye is my favorite name!")
    else
      IO.puts("Hello, #{name}!")
    end
  end
end
