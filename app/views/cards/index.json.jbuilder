json.array!(@cards) do |card|
  json.extract! card, :id, :cardID, :cardColour,:setTotal, :setName, :cardName, :cardType, :powerTough, :castingCost, :cardText, :artist, :rarity
  json.url card_url(card, format: :json)
end
