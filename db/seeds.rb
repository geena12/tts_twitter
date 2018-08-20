puts "Generating my user"
u = User.find_or_create_by(username: "jruse")
u.update_attributes({
  first_name: "Jeanna",
  last_name:  "Kruse",
  city:       "Columbus",
  state:      "OH",
  bio:        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed id est laborum.",
  fake:       false,
})

u.save!

puts "Deleting fake users"
User.where(fake: true). destroy_all

puts "Generating fake users\n"
10.times do
  putc "."
  User.create!({
    username:    Faker::Internet.username,
    first_name:  Faker::Name.first_name,
    last_name:   Faker::Name.last_name,
    city:        Faker::Address.city,
    state:       Faker::Address.state_abbr,
    bio:         Faker::Lorem.paragraph,
    fake:        true,
  })

end
puts "done"
