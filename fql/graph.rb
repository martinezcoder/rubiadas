require "rubygems"
require "open-uri"
require "rack/utils"
require "json"

class Fql
	  
	class << self
		attr_accessor :base_url
	end
		  
	self.base_url = "https://graph.facebook.com/"
			  
	attr :access_token
				  
	def initialize access_token
		@access_token = access_token
	end
	  
	def query q
		request(q) #, :access_token => access_token, :format => "json"})
	end
						  
	def request method
		puts "#{self.class.base_url}#{method}"

		response = open "#{self.class.base_url}#{method}"
		JSON.parse response.read
	end
							  
								  
end

fql = Fql.new("")
							
response = fql.query("SEAT.Official")
=begin
puts response.inspect
response.each do |key, value|
	puts "#{key}:  #{value}"
end
=end
puts "Identificador: #{response["id"]}"
puts "Prosumers: #{response["talking_about_count"]}"
puts "Me gusta: #{response["likes"]}"

puts ".........................."

puts response.inspect
# response = fql.query("cocacola")
# puts response.inspect
