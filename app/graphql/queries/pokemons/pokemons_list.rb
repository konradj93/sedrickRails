module Queries
  module Pokemons
    class PokemonsList < GraphQL::Schema::Resolver
      type [Types::Pokemons::PokemonType], null: false
      description 'Returns all pokemons'

      argument :type, String, required: false

      def resolve(type: nil)
        result = Pokemon.all
        result = result.where([%(types LIKE ?), "%#{type}%"]) if type.present?
        result
      end
    end
  end
end
