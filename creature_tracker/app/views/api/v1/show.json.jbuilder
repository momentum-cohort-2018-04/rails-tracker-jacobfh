json.links do
  json.self api_v1_creature_url(@creature)
  json.list api_v1_creatures_url
  json.update do
    json.method "PUT"
    json.href api_v1_creature_url(@creature)
  end
  json.delete do
    json.method "DELETE"
    json.href api_v1_creature_url(@creature)
  end
end

json.data do
  json.id @creature.id
  json.attributes do
    json.common_name @creature.common_name
    json.scientific_name @creature.scientific_name
    json.notes @creature.notes
    json.status @creature.status
  end