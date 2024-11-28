# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# unless Department.blank?
#   Department.create!(name: "Networking")
#   Department.create!(name: "Dispatch")
#   Department.create!(name: "Marketing")
#   Department.create!(name: "Shipping")
# end


# unless State.blank?
#   State.create!(name: "Madhya Pradesh", country_id: 2)
#   State.create!(name: "Rajasthan", country_id: 2)
#   State.create!(name: "Gujarat", country_id: 2)
#   State.create!(name: "Maharashtra", country_id: 2)
# end

# unless State.blank?
#   State.create!(name: "California", country_id: 3)
#   State.create!(name: "New York", country_id: 3)
#   State.create!(name: "Texas", country_id: 3)
#   State.create!(name: "Florida", country_id: 3)
# end

unless City.blank?
  City.create!(name: "Indore", state_id: 9)
  City.create!(name: "Bhopal", state_id: 9)
  City.create!(name: "Gwalior", state_id: 9)
  City.create!(name: "Jabalpur", state_id: 9)
end

unless City.blank?
  City.create!(name: "Jaipur", state_id: 10)
  City.create!(name: "Jodhpur", state_id: 10)
  City.create!(name: "Udaipur", state_id: 10)
  City.create!(name: "Ajmer", state_id: 10)
end

unless City.blank?
  City.create!(name: "Ahmedabad", state_id: 11)
  City.create!(name: "Surat", state_id: 11)
  City.create!(name: "Vadodara", state_id: 11)
  City.create!(name: "Baroda", state_id: 11)
end

unless City.blank?
  City.create!(name: "Mumbai", state_id: 12)
  City.create!(name: "Pune", state_id: 12)
  City.create!(name: "Nashik", state_id: 12)
  City.create!(name: "Thane", state_id: 12)
end

unless City.blank?
  City.create!(name: "Los Angeles", state_id: 13)
  City.create!(name: "San Francisco", state_id: 13)
  City.create!(name: "San Diego", state_id: 13)
  City.create!(name: "San Jose", state_id: 13)
end

unless City.blank?
  City.create!(name: "Manhattan", state_id: 14)
  City.create!(name: "Brooklyn", state_id: 14)
  City.create!(name: "Queens", state_id: 14)
  City.create!(name: "Bronx", state_id: 14)
end

unless City.blank?
  City.create!(name: "Houston", state_id: 15)
  City.create!(name: "Dallas", state_id: 15)
  City.create!(name: "Austin", state_id: 15)
  City.create!(name: "San Antonio", state_id: 15)
end

unless City.blank?
  City.create!(name: "Miami", state_id: 16)
  City.create!(name: "Orlando", state_id: 16)
  City.create!(name: "Tampa", state_id: 16)
  City.create!(name: "Jacksonville", state_id: 16)
end
