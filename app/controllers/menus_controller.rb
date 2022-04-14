class MenusController < ApplicationController
  skip_before_action :verify_authenticity_token

  @@menu = [
    { name: "Latte", price: 4.0 },
    { name: "Scone", price: 5.0 },
    { name: "Tea", price: 3.5 }
]
  def index
    @menu = @@menu
  end

  def create
    item = { name: params[:name], price: params[:price]}
    # render json: item
    @@menu << item
    redirect_to '/menus'
  end
end
