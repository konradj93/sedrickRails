class Types::PokemonType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :types, [String], null: false
  field :hp, Integer, null: false
  field :attack, Integer, null: false
  field :defense, Integer, null: false
  field :speed, Integer, null: false
  field :special_attack, Integer, null: false
  field :special_defense, Integer, null: false
end
