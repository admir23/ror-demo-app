class SellersController < ApplicationController
  before_action :find_seller, only: [:edit, :update, :show, :destroy]

 	def index
 		@sellers = Seller.order(rating: :desc)
 	end

 	def new
 		@seller = Seller.new
  end
 
  def create
  	@seller = Seller.new(seller_params)
  	 if @seller.save
  	 flash[:notice] = "Seller created successfully!"
  	 redirect_to sellers_path
     else
     	render :new
     end	
 	end	

 	def edit
  end

 	def update
    @seller.update(seller_params)
    if @seller.save
    	redirect_to sellers_path
    else
    render :edit	
 	end
  end


 	def show
    if params[:product]
      @seller = Product.find(params[:product][:seller])
      @products = @seller.products
    else
      @products = Product.all  
  end
  end	

 	def destroy
 	 @seller.destroy
 	 flash[:notice] = "Seler deleted successfully"
 	 redirect_to sellers_path
  end

 	private

 	def seller_params
 		params.require(:seller).permit(:name, :rating)
 	end

 	def find_seller
 		@seller = Seller.find(params[:id])
 	end
end