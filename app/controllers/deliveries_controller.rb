class DeliveriesController < ApplicationController
  before_action :set_delivery, only: [:show, :update, :destroy]

  # GET /deliveries
  def index
    @deliveries = Delivery.all
    render json:@deliveries
  end

  # GET /deliveries/:id
  def show
    render json:@deliveries
  end

    # POST /deliveries
  def create

    if params[:status]
      @delivery = delivery1 = Delivery.create(status: params[:status] ,
                                              sender_id: params[:sender_id] ,
                                              recipient_id: params[:recipient_employee_id] ,
                                              source_id: params[:source_id] ,
                                              destination_id: params[:destination_id])

      params[:itens_names].each do |item_name|
        item1 = Item.create(name: item_name)
        @delivery.items << item1
      end

    else
      @delivery = Delivery.new()
    end

    if @delivery.save
      # render :show, status: :created, location: @delivery
      render json: @delivery.to_json
    else
      render json: @delivery.errors, status: :unprocessable_entity
    end
  end

  # PUT /deliveries/:id
  def update
    if @delivery.update(delivery_params)
      # render :show, status: :ok, location: @delivery
      render json: @delivery.to_json
    else
      render json: @delivery.errors, status: :unprocessable_entity
    end
  end

  def search_delivery

    if params[:delivery_id] != '0'
      @deliveries = Delivery.where(id: params[:delivery_id])
    else
      @deliveries = Delivery.all
    end

    render json:@deliveries
  end

  def search_delivery_by_route

    if params[:route] != '0'
      @deliveries = Delivery.where(route_id: params[:route])
    else
      @deliveries = Delivery.all
    end

    render json:@deliveries
  end

  # DELETE /deliveries/:id
  def destroy
    @delivery.destroy
  end

  private

    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    def delivery_params
      params.require(:delivery).permit(:status, :tracker, :sender_employee_id, :recipient_employee_id, :source_id, :destination_id, :items_names)
    end
end
