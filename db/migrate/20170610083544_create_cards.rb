class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :cardNumber
      t.integer :cardID
      t.integer :setTotal
      t.text :setName
      t.text :cardName
      t.text :cardType
      t.text :powerTough
      t.text :castingCost
      t.text :cardText
      t.text :artist
      t.text :rarity

      t.timestamps null: false
    end
  end
end
