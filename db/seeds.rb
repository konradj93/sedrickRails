data = JSON.parse(File.read(Rails.root.join('db', 'seeds', 'pokedex.json')))

data.each do |pokemon|
  Pokemon.create(
    name: pokemon.dig('name', 'english'),
    types: pokemon['type'],
    hp: pokemon.dig('base', 'HP'),
    attack: pokemon.dig('base', 'Attack'),
    defense: pokemon.dig('base', 'Defense'),
    special_attack: pokemon.dig('base', 'Sp. Attack'),
    special_defense: pokemon.dig('base', 'Sp. Defense'),
    speed: pokemon.dig('base', 'Speed'),
  )
end
