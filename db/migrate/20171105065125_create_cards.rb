class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer  :cardID
      t.integer  :cardNumber
      t.integer  :setTotal
      t.text     :cardColour
      t.text     :cardName
      t.text     :setName
      t.text     :cardType
      t.text     :powerTough
      t.text     :castingCost
      t.text     :cardText
      t.text     :artist
      t.text     :rarity
      t.string   :image

      t.timestamps null: false
    end
  end
end