defmodule War.Deck do
  @cards (
    for suit <- [:spades, :hearts, :diamonds, :clubs],
        rank <- [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
      do: %War.Card{suit: suit, rank: rank}
  )

  def new do
    Enum.shuffle(@cards)
  end

  def draw([card|deck]), do: {:ok, card, deck}
  def draw([]), do: {:error, []}
end
