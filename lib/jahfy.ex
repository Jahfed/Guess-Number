defmodule Jahfy do
  use Application

  def start(_type, _args) do
    Jahfy.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    correct = :rand.uniform(11) - 1
    guess = IO.gets("guess a number between 0 and 10: ") |> String.trim()

    if String.to_integer(guess) == correct do
      IO.puts("You guessed right! It was #{correct}")
    else
      IO.puts("Darn... You guessed #{guess}, correct was #{correct}")
    end
  end
end
