class Painting < ActiveRecord::Base

	def self.search_for(query)
		Painting.where("name LIKE :query OR artist LIKE :query OR museum LIKE :query", query: "%#{query}%")
	end

end
