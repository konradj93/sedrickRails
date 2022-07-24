# frozen_string_literal: true

module Mutations
  module Pokemons
    class PokemonUpdate < Mutations::BaseMutation
      graphql_name 'pokemonUpdate'
      description 'Updates a pokemon'

      argument :id, ID, required: true
      argument :attributes, Types::Pokemons::PokemonUpdateInput, required: true

      field :pokemon, Types::Pokemons::PokemonType, null: true

      def resolve(id:, attributes:)
        pokemon = Pokemon.find(id)
        pokemon.update!(attributes.to_h)

        { pokemon: pokemon }
      end
    end
  end
end

