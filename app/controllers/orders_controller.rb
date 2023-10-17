class OrdersController < ApplicationController
	def index
		@user = current_user
		@order = @user.orders.find_by(status: 'in_progress')
	end

	def update
		@order = Order.find(params[:id])
		if @order.update(instructions: params[:order][:instructions], status: 'completed')
			flash[:notice] = "Order placed succesfully"
			redirect_to root_path
		else
			flash[:error] = "Error in placing order."
			redirect_to orders_path
		end
	end
end
