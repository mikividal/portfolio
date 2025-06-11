# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning DB"
Project.destroy_all

puts "Creating projects"
Project.create!(
  title: "GloWork",
  description: "Mood tracking App for remote teams."
)
Project.create!(
  title: "Shift Buddy",
  description: "Your on-call assistant for tracking tasks and staying focused under pressure."
)

Project.create!(
  title: "ConsentCheck",
  description: "A simple tool that helps healthcare professionals evaluate the ethical and legal compliance of AI tools."
)
puts "#{Project.count}projects created"
