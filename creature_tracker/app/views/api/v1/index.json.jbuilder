json.array! @creatures do |creature|
  json.extract! creature, :id, :common_name, :scientific_name, :notes, :status
end