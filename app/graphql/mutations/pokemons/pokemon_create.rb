# frozen_string_literal: true

module Mutations
  module Pokemons
    class PokemonCreate < Mutations::BaseMutation
      graphql_name 'pokemonCreate'
      description 'Creates a new pokemon'

      argument :attributes, Types::Pokemons::PokemonCreateInput, required: true

      field :pokemon, Types::Pokemons::PokemonType, null: true

      def resolve(attributes:)
        { pokemon: Pokemon.create!(attributes.to_h) }
      end
    end
  end
end
