defmodule War.Deck do
  @cards (
    for suit <- [:spades, :hearts, :diamonds, :clubs],
        rank <- [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
      do: %{suit: suit, rank: rank}
  )

  def suffle do
    Enum.shuffle(@cards) 
  end

  def draw(_deck) do

  end
end
