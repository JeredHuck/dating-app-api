def generate_username
  loop do
    username = Faker::Internet.username(specifier: 5..8, separators: %w(_ .))
    return username if username.match?(/[a-zA-Z0-9]/)
  end
end


10.times do
  username = generate_username

  user = User.create!(
    username: username,
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password(min_length: 8)
  )
  
  user.create_profile(
    bio: Faker::Lorem.paragraph,
    profile_picture_url: Faker::Avatar.image
  )
end
