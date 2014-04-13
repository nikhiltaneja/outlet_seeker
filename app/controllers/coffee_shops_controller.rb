class CoffeeShopsController < ApplicationController

  def index
    @coffee_shops = CoffeeShop.all
    @hash = Gmaps4rails.build_markers(@coffee_shops) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.title shop.name
    end
  end

  def show
    @coffee_shop = CoffeeShop.find(params[:id])
    @comment = Comment.new
    @comment.coffee_shop_id = @coffee_shop.id
  end

  def new
    @coffee_shop = CoffeeShop.new
  end

  def create
    @coffee_shop = CoffeeShop.new(coffee_shop_params)
    if @coffee_shop.save
      redirect_to coffee_shop_path(@coffee_shop)
    else
      render :new
    end
  end

  def edit
    @coffee_shop = CoffeeShop.find(params[:id])
  end

  def update
    @coffee_shop = CoffeeShop.find(params[:id])
    @coffee_shop.update(coffee_shop_params)

    flash.notice = "Coffee shop '#{@coffee_shop.name}' updated!"

    redirect_to coffee_shop_path(@coffee_shop)
  end

  def destroy
    @coffee_shop = CoffeeShop.find(params[:id])
    @coffee_shop.destroy
    redirect_to root_path
  end

  private

  def coffee_shop_params
    params.require(:coffee_shop).permit(:name, :address, :city, :state, :outlets)
  end

end
