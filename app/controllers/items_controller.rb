class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = Item.all
  end

  # GET /items/:id
  def show
  end

  # POST /items
  def create

    if params[:name] 
      @item = Item.new(delivery_params)
    else 
      @item = Item.new()
    end

    if @item.save
      render :show, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PUT /items/:id
  def update
    if @item.update(item_params)
      render :show, status: :ok, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/:id
  def destroy
    @item.destroy
  end

  def search_items_by_delivery

    if params[:delivery_id] != '0'
      @items = Item.where(delivery_id: params[:delivery_id])
    else
      @items = Item.all
    end

    render json:@items
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :delivery_id)
    end
end
