module Types
  module Pokemons
    class PokemonCreateInput < Types::BaseInputObject
      description 'Input arguments for creating the pokemon'

      argument :name, String, required: true
      argument :types, [String], required: true
      argument :hp, Integer, required: true
      argument :attack, Integer, required: true
      argument :defense, Integer, required: true
      argument :speed, Integer, required: true
      argument :special_attack, Integer, required: true
      argument :special_defense, Integer, required: true
    end
  end
end
