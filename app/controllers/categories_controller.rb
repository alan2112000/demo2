class CategoriesController < ApplicationController
  before_filter :find_category, :only => [ :edit , :update, :destroy]

  def show
    # catch what kind of category the user touch
    @category=Category.find(params[:id])

    # catch the all products belong one categoryes
    #Person.where("administrator = 1").order("created_on DESC").find(1)
    @products = Product.where("category =  '#{@category.name}'")

  end

  def edit
  end

  def new
      @category=Category.new

  end

  def update
    if  @category.update_attributes(category_param)
      flash[:notice] = "category was successfully update"
      redirect_to products_url(@product)
    else
      render :action => :edit
    end
  end


  def destroy
    @category.destroy
    redirect_to products_path
  end

  private
  def find_category
    @category = Category.find(params[:id])
  end

  private
  def category_param
    params.require(:category).permit(:name)
  end

end
