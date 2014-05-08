# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prompts = PromptsData.create([
	{prompt: "st. = 2", answer: "length"},
	{prompt: "stri. = 4", answer: "length"},
	{prompt: "string. = gnirts", answer: "reverse"},
	{prompt: "gnirts. = string", answer: "reverse"},
	{prompt: "string. = STRING", answer: "upcase"},
	{prompt: "Gnirts. = GNIRTS", answer: "upcase"},
	{prompt: "STRING. = string", answer: "downcase"},
	{prompt: "Gnirts. = gnirts", answer: "downcase"}
	])