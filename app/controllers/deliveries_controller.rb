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

  # PUT /deliveries/:id
  def update
    if @delivery.update(delivery_params)
      render :show, status: :ok, location: @delivery
    else
      render json: @delivery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deliveries/:id
  def destroy
    @delivery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_params
      params.require(:delivery).permit(:status, :sender_employee_id, :recipient_employee_id)
    end
end
