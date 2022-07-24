# frozen_string_literal: true

module Mutations
  module Pokemons
    class PokemonDelete < Mutations::BaseMutation
      graphql_name 'pokemonDelete'
      description 'Deletes a pokemon'

      argument :id, ID, required: true

      field :pokemon, Types::Pokemons::PokemonType, null: true

      def resolve(id:)
        pokemon = Pokemon.find(id)
        pokemon.destroy!

        { pokemon: pokemon }
      end
    end
  end
end


