defmodule War.Player do
  @enforce_keys [:name, :cards]
  defstruct [name: "", cards: []]

  def play(%War.Player{name: name, cards: [card|cards]}) do
    {:ok, card, %War.Player{name: name, cards: cards}}
  end

  def play(%War.Player{name: _, cards: []}) do
    {:error, :no_cards}
  end
end
