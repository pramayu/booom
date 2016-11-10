class WishlistsController < ApplicationController
  def destroy
    @wishlist = current_user.wishlists.find(params[:id])
    @wishlist.destroy
    redirect_to :back
  end
end
