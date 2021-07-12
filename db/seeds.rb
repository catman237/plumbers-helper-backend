# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# job
# t.string "name"
# t.integer "price"
# t.text "description"

toiletRepair = Job.create(name: 'Pull and Reset', price: 125, description: 'Toilet was leaking from the base, needs to be pulled and reset with a new wax ring')


# tool
# t.string "name"
# t.string "brand"
# t.string "use"

wrench = Tool.create(name: 'wrench', brand: 'Craftsman', use: 'to tighten and loosen nuts and bolts')