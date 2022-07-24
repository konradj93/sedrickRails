module Types
  module Pokemons
    class PokemonUpdateInput < Types::BaseInputObject
      description 'Input arguments for updating the pokemon'

      argument :name, String, required: false
      argument :types, [String], required: false
      argument :hp, Integer, required: false
      argument :attack, Integer, required: false
      argument :defense, Integer, required: false
      argument :speed, Integer, required: false
      argument :special_attack, Integer, required: false
      argument :special_defense, Integer, required: false
    end
  end
end

