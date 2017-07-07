class MonitoringsController < ApplicationController
  before_action :set_monitoring, only: [:show, :update, :destroy]

  # GET /monitorings
  # GET /monitorings.json
  def index
    @monitorings = Monitoring.all
    render json: @monitorings
  end

  # GET /monitorings/1
  # GET /monitorings/1.json
  def show
    render json:@monitorings
  end

  # POST /monitorings
  # POST /monitorings.json
  def create
    @monitoring = Monitoring.new(monitoring_params)

    if @monitoring.save
      render json:(@monitoring), status: :created, location: @monitoring
    else
      render json: @monitoring.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monitorings/1
  # PATCH/PUT /monitorings/1.json
  def update
    if @monitoring.update(monitoring_params)
      render :show, status: :ok, location: @monitoring
    else
      render json: @monitoring.errors, status: :unprocessable_entity
    end
  end

  def battery_callback
    @monitor = Monitoring.last
    render json:@monitor
  end

  # DELETE /monitorings/1
  # DELETE /monitorings/1.json
  def destroy
    @monitoring.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoring
      @monitoring = Monitoring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitoring_params
      # params.fetch(:monitor, {})
      params.require(:monitoring).permit(:status)
    end
end
