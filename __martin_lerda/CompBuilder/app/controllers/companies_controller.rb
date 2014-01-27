require 'sec_query'

class CompaniesController < ApplicationController

	def index
		@companies = Company.search_for(params[:query])
	end 

	def show
		
	end

	def new
		@company = Company.new
	end

	def create
  		@company = Company.new(company_params)
    	if @company.save
  	 		redirect_to "/companies/#{@company.id}"
    	else
      		flash[:error] = "Uh Oh! something went wrong!"
      		redirect_to new_company_path
    	end
	end



private
def company_params
	params.require(:company).permit(:name, :ticker, :stock_symbol, :cik, :sic) if params[:company]
end


end
