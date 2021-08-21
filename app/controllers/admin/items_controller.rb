class Admin::ItemsController < ApplicationController

  def new
    @item_new = Item.new
  end

  def create
    @item_new = Item.new(item_params)
    @item_new.save
    redirect_to admin_item_path(@item_new)
  end

  def show
  end



  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price)
  end


end
