require "rubygems"
require "open-uri"
require "rack/utils"
require "json"

class Fql
	  
	class << self
		attr_accessor :base_url
	end
		  
	self.base_url = "https://api.facebook.com/method/"
			  
	attr :access_token
				  
	def initialize access_token
		@access_token = access_token
	end
	  
	def query q
		request("fql.query", {:query => q, :access_token => access_token, :format => "json"})
	end
						  
	def request method, params
		response = open "#{self.class.base_url}#{method}?#{build_query(params)}"
		JSON.parse response.read
	end
							  
	def build_query params
		@helper ||= Object.new.extend(Rack::Utils)
		@helper.send :build_query, params
	end
								  
end

fql = Fql.new("AAACEdEose0cBAIRWOW3VAkXEFZBZCIf5PnWZCkZBH3ItL4eysrAcjuIBtB7TMf5fVLxmhBYkBpOCQjFfHa6vRybRJNZAC22NlQZBZBhT63osQZDZD")
							
 response = fql.query(
 	 "SELECT uid2 from friend where uid1 = me()")

=begin
	 "SELECT uid, name, pic_square
 FROM user WHERE uid = me()")
=end
puts response.inspect
