class Admin::DashboardsController < Admin::BaseController
	def show
		@products = Product.count(:all)
 
	end
end	