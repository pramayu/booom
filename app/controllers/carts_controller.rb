class CartsController < ApplicationController
	layout "themes"
	def index
		@carts = current_cart.line_items
		@cart = current_cart
	end
end