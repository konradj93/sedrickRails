module Types
  module Pokemons
    class PokemonType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :types, [String], null: false
      field :hp, Integer, null: false
      field :attack, Integer, null: false
      field :defense, Integer, null: false
      field :speed, Integer, null: false
      field :special_attack, Integer, null: false
      field :special_defense, Integer, null: false

      field :image, String, null: false
      field :sprite, String, null: false

      def image
        "https://github.com/fanzeyi/pokemon.json/raw/master/images/#{object.id.to_s.rjust(3, '0')}.png"
      end

      def sprite
        "https://github.com/fanzeyi/pokemon.json/raw/master/sprites/#{object.id.to_s.rjust(3, '0')}MS.png"
      end
    end
  end
end

