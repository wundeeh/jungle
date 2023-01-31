class ProductsController < ApplicationController
  before_action :authorize

  def index
    @products = Product.all.order(created_at: :desc)

    puts "-----"
    puts @products.count
    puts "-----"

  end

  def show
    @product = Product.find params[:id]
  end

end
