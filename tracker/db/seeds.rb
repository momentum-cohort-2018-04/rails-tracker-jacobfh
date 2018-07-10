10.times do
    Coffee.create ({
        blend_name: Faker::Coffee.blend_name,
        origin: Faker::Coffee.origin, 
        notes: Faker::Coffee.notes 
    })
end