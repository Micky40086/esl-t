class HomeController < ApplicationController
  def index
    @products = Product.enable.includes(:product_images)
  end
end
