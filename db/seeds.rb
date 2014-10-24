# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all

Video.create(title: "Futurama", description: "Crazy cartoon about the future", small_cover_url: "https://s3.amazonaws.com/myflix-tb/futurama.jpg", large_cover_url: "https://s3.amazonaws.com/myflix-tb/futurama_large.jpg")
Video.create(title: "Family Guy", description: "Disfunctional family comedy", small_cover_url: "https://s3.amazonaws.com/myflix-tb/family_guy.jpg", large_cover_url: "https://s3.amazonaws.com/myflix-tb/family_guy_large.jpg")
Video.create(title: "Monk", description: "OCD Detective", small_cover_url: "https://s3.amazonaws.com/myflix-tb/monk.jpg", large_cover_url: "https://s3.amazonaws.com/myflix-tb/monk_large.jpg")