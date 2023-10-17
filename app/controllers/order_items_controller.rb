class OrderItemsController < ApplicationController
	def new
		@item = Item.find(params[:id])
		@order_item = OrderItem.new
	end

	def create
		@item = Item.find(params[:order_item][:item_id])
		@user = current_user
		@order = @user.orders.find_or_create_by(status: 'in_progress')
		@order_item = @order.order_items.build(order_item_params)
		if @order_item.save
			@order_item.update(subtotal: @item.price.to_i * @order_item.quantity.to_i)
			@order.update(total_price: @order.order_items.sum(:subtotal))
			flash[:notice] = "Added items in cart"
			redirect_to orders_path
		else
			flash[:error] = "Error in adding items in cart"
			redirect_to root_path
		end
	end
	
	private
	
	def order_item_params
		params.require(:order_item).permit(:item_id, :quantity, :instructions)
	end
end
