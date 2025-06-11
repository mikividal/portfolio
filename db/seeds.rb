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
  title: "GlowWork",
  description: "Mood tracking App for remote teams."
)
Project.create!(
  title: "AI Interview Agent",
  description: "An AI-led candidate screening app built with Rails + OpenAI."
)

Project.create!(
  title: "Healthcare Advisory",
  description: "Advising startups on AI ethics and workflow design."
)
puts "#{Project.count}projects created"
