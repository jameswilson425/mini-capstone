require "http"

system "clear"

puts "Welcome to my store. Here are all of my products:"

response = HTTP.get("http://localhost:3000/api/all_products.json")

pp response.parse
