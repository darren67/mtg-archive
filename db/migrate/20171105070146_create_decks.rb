class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.integer  :cardID
      t.integer  :deckID
      t.datetime :dateCreated
      t.text     :deckName
      t.text     :deckType
      t.text     :deckDescription
      t.integer  :totalCards

      t.timestamps null: false
    end
  end  
end
