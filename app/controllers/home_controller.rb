class HomeController < ApplicationController
	def index
	  @welcome_message = 'Ruby on Rails for begginers 2017'
    @webshop = 'Web shop demo application'
    @products = Product.all

	 
  end

  def test
  	# puts params.inspect
  end	

  def products
  	@products = Product.order(price: :desc)
 
  end	
end