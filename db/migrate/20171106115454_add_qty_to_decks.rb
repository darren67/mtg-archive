class AddQtyToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :qty, :int
  end
end
