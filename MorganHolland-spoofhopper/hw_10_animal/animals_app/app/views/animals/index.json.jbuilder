json.array!(@animals) do |animal|
  json.extract! animal, :id, :species, :phylum, :is_vertebrate, :no_of_legs
  json.url animal_url(animal, format: :json)
end
