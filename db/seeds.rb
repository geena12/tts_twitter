u = User.find_or_create_by(username: "jruse")
u.update_attributes({
  first_name: "Jeanna",
  last_name:  "Kruse",
  city:       "Columbus",
  state:      "OH",
  bio:        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed id est laborum.",
})

u.save!
