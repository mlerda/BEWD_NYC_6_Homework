require 'sec_query'

class Company < ActiveRecord::Base

	def self.search_for(query)
		SecQuery::Entity.find(nil)
		Company.where("ticker LIKE :query", query: "%#{query}%")

		#SecQuery::Entity.find(company)
		#Company.where("name LIKE :query OR ticker LIKE :query", query: "%#{query}%")
	end

	

end
