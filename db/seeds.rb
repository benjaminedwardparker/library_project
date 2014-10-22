# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Patron.destroy_all
Book.destroy_all
Checkout.destroy_all

Patron.create(name: "Jesse", asshole: false, thief: true)
Patron.create(name: "Chundabear", asshole: true, thief: false)
Patron.create(name: "Benjamin", asshole: false, thief: false)
Patron.create(name: "Kirt", asshole: true, thief: true)

Book.create(title: "Moby Dick", author: "Herman Melville", on_shelf: true)
Book.create(title: "Eloquent Ruby", author: "Russ Olsen", on_shelf: true)
Book.create(title: "Game of Thrones", author: "George Martin", on_shelf: true)
Book.create(title: "The Jungle", author: "Upton Sinclair", on_shelf: true)
Book.create(title: "Canterbury Tales", author: "Chaucer", on_shelf: true)
