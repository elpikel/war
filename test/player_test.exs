defmodule PlayerTest do
  use ExUnit.Case

  test "should be able to play when has cards" do
    player = %War.Player{
      name: "player",
      cards: [%War.Card{
        suit: :spades,
        rank: 2
      }]
    }

    assert {:ok, _, _} = War.Player.play(player)
  end

  test "should get error when playing with empty hand" do
    player = %War.Player{name: "player", cards: []}

    assert {:error, :no_cards} = War.Player.play(player)
  end
end
