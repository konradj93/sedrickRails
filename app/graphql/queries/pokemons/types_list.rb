module Queries
  module Pokemons
    class TypesList < GraphQL::Schema::Resolver
      type [Types::Pokemons::TypeType], null: false
      description 'Returns all pokemon types'

      def resolve
        Pokemon.all.pluck(:types).flatten.uniq.sort.map { |t| OpenStruct.new(type: t) }
      end
    end
  end
end

