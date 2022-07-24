module Types
  class MutationType < Types::BaseObject
    field :pokemon_create, mutation: Mutations::Pokemons::PokemonCreate
    field :pokemon_update, mutation: Mutations::Pokemons::PokemonUpdate
    field :pokemon_delete, mutation: Mutations::Pokemons::PokemonDelete
  end
end
