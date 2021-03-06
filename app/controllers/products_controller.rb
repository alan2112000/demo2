class ProductsController < ApplicationController

  before_filter :find_product, :only => [ :show,:edit,:destroy,:update]

  def index
    @products = Product.page(params[:page]).per(6)
    @categories = Category.all
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def show
      @products = Product.where("category='#{@product.category}'")


  end

  def delete
  end

  def update
    if  @product.update_attributes(product_param)
      flash[:notice] = "event was successfully update"
      redirect_to products_url(@product)
    else
      render :action => :edit
    end
  end

  def create
    @product = Product.new(product_param)
    @product.save
    redirect_to products_path
  end

  def destroy
    @product.destroy
    redirect_to :action => :index
  end


  def find_product
    @product = Product.find(params[:id])
  end


  def product_param
    params.require(:product).permit(:name, :description, :category ,:pic ,:price , :pic2 , :pic3 , :long_des , :video_url)
  end


end
