class CategoriesController < ApplicationController
	
	before_action :find_category, { only: [:edit, :update, :show, :destroy] }
	
	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

  def create
		@category = Category.new(category_params)

		if @category.save
			flash[:notice] = 'Category created succesfully'
			redirect_to categories_path
		else
			render :new
		end

	end

	def edit
		
	end

	def update
		@category.update(category_params)
		  if @category.save
			redirect_to categories_path
		else
			render :edit
		end
	end

	def show
		if params[:product]
			@category= Product.find(params[:product][:category])
			@products = @category.products
		else
		  @products = Product.all
	end
end

	def destroy
    @category.destroy
		flash[:notice] = 'Category deleted succesfully'
		redirect_to categories_path
	end

	private 
	
def category_params
		params.require(:category).permit(:name, :description);
	end

def find_category
   @category = Category.find(params[:id])
end

end