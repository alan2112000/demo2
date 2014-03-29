class WelcomeController < ApplicationController
	def new 
		@p = Product.new 
	end

	def update
		@p = Product.find(params[:id]) 
		@p.update_attributes(page[:p]) 
		
		redirect_to :action => :show, :id => @p 
	end

	def show 
		@p = Product.find(params[:id])
	end 
	def say
	end
	
	def index 
		@p = Product.all 
		
	end
end
