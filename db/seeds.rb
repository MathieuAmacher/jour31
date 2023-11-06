User.destroy_all


3.times do
    first_name = Faker::Name.first_name
    email = "#{first_name.downcase}@yopmail.com"

    user = User.create(description: Faker::Superhero.descriptor , first_name: first_name, last_name: Faker::Name.last_name, email: email)
end