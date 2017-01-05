# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# FastSeeder.seed_csv!(User, "users.csv", :first_name, :last_name, :middle_initial, :no_stars)

require 'csv'

csv_file = Rails.root.join('db', 'seeds', 'users.csv')


CSV.foreach(csv_file, headers: true) do |row|
  User.create(row.to_hash)
end