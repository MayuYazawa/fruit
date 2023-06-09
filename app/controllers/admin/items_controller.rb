class Admin::ItemsController < ApplicationController
  
  def new
    @item = Item.new
    @genre = Genre.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path, notice: "商品を登録しました。"
    else
      render :new
    end
  end

  def index
    @items = Item.page(params[:page]).per(10)
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(@item.id)
    else
      render "edit"
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_image, :genre_id, :item_name, :item_caption, :without_tax, :sale_status)
  end
end
