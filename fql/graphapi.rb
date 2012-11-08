require 'koala'
require 'open-uri'


puts Time.now

@graph = Koala::Facebook::API.new
resp = @graph.graph_call("cocacola", {}, "get", {})
puts resp

puts Time.now

cocacola_url = "https://graph.facebook.com/cocacola"
response = open cocacola_url
response = JSON.parse response.read
puts response.inspect

puts Time.now

