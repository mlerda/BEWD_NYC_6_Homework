require 'json'
require 'rest-client'

class Capitals
attr_accessor :country_info

	def initialize
		@country_info = []
	end

	def get_input
    	gets.strip
  	end

	def get_from_worldbank_1
		response = RestClient.get("http://api.worldbank.org/countries/ar?format=json") 
		parsed = JSON.parse(response)
		parsed[1].each do |world_bank_data|		
			country_name = world_bank_data["name"]
			country_region = world_bank_data["region"]["value"]
			country_capital = world_bank_data["capitalCity"]
			country_income_level = world_bank_data["incomeLevel"]["value"]
		@country_info << Countries.new({name: country_name, region: country_region, capital: country_capital, income_level: country_income_level})	
		end
	end

	def get_from_worldbank_2
		response = RestClient.get("http://api.worldbank.org/countries/br?format=json") 
		parsed = JSON.parse(response)
		parsed[1].each do |world_bank_data|		
			country_name = world_bank_data["name"]
			country_region = world_bank_data["region"]["value"]
			country_capital = world_bank_data["capitalCity"]
			country_income_level = world_bank_data["incomeLevel"]["value"]
		@country_info << Countries.new({name: country_name, region: country_region, capital: country_capital, income_level: country_income_level})	
		end
	end

	def get_from_worldbank_3
		response = RestClient.get("http://api.worldbank.org/countries/us?format=json") 
		parsed = JSON.parse(response)
		parsed[1].each do |world_bank_data|		
			country_name = world_bank_data["name"]
			country_region = world_bank_data["region"]["value"]
			country_capital = world_bank_data["capitalCity"]
			country_income_level = world_bank_data["incomeLevel"]["value"]
		@country_info << Countries.new({name: country_name, region: country_region, capital: country_capital, income_level: country_income_level})	
		end
	end

  	def display_countries
		country_info.join("-")
	end

end