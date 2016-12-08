# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

   Transaction.create([{user_id: "0",
   						market_id: "1",
   						timestamp: "2016-12-04",
   						num_shares: "1",
   						price: "0.12"},
   						{user_id: "0",
   						market_id: "1",
   						timestamp: "2016-12-05",
   						num_shares: "1",
   						price: "0.35"},
   						{user_id: "0",
   						market_id: "1",
   						timestamp: "2016-12-06",
   						num_shares: "1",
   						price: "0.20"}])