class CategoriesController < ApplicationController
  def list
  end

  def show
    # catch what kind of category the user touch
    @category=Category.find(params[:id])

    # catch the all products belong one categoryes
    #Person.where("administrator = 1").order("created_on DESC").find(1)
    @products = Product.where("category =  '#{@category.name}'")


  end

end
