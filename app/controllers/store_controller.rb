class StoreController < ApplicationController
<<<<<<< HEAD
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
=======
  
  skip_before_filter :authorize
  
  def index
    @products = Product.all
    @cart = current_cart
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  end
end
