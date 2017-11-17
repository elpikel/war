defmodule DeckTest do
  use ExUnit.Case

  test "should return complete deck" do
    deck = War.Deck.new
    assert 52 = Enum.count(deck) 
  end

  test "should draw card if there is any in deck" do
    deck = War.Deck.new
    card = War.Deck.draw(deck)

    assert {:ok, _, _} = card
  end

  test "should return error if there isn't any in deck" do
    deck = []
    card = War.Deck.draw(deck)

    assert {:error, _} = card
  end
end
