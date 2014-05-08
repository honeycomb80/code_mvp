# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prompts = PromptsData.create([
	{prompt_1: "st.", prompt_2: "= 2", answer: "length"},
	{prompt_1: "stri.", prompt_2: "= 4", answer: "length"},
	{prompt_1: "string.", prompt_2: "= gnirts", answer: "reverse"},
	{prompt_1: "gnirts.", prompt_2: "= string", answer: "reverse"},
	{prompt_1: "string.", prompt_2: "= STRING", answer: "upcase"},
	{prompt_1: "Gnirts.", prompt_2: "= GNIRTS", answer: "upcase"},
	{prompt_1: "STRING.", prompt_2: "= string", answer: "downcase"},
	{prompt_1: "Gnirts.", prompt_2: "= gnirts", answer: "downcase"}
	])