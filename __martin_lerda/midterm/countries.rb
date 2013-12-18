class Countries
	attr_accessor :name, :capital, :income_level, :region
	def initialize(options)
		@name = options[:name]
		@capital = options[:capital]
		@income_level = options[:income_level]
		@region = options[:region]
	end


	def to_s
		"#{@name}, Region: #{@region}, Capital: #{@capital}, Income level: #{@income_level}"
	end	

end