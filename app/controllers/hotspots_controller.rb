class HotspotsController < ApplicationController
  before_action :set_hotspot, only: [:show, :update, :destroy]

  # GET /hotspots
  def index
    @hotspots = Hotspot.all
  end

  # GET /hotspots/:id
  def show
    render json:(@hotspots)
  end

  # POST /hotspots
  def create
    @hotspot = Hotspot.new(hotspot_params)

    if @hotspot.save
      render :show, status: :created, location: @hotspot
    else
      render json: @hotspot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hotspots/:id
  def update
    @hotspot.update(hotspot_params)
    head :no_content
  end

  # DELETE /hotspots/:id
  def destroy
    @hotspot.destroy
  end

  def search_delivery_by_sender

    if params[:hotspot_id] != '0'
      @hotsposts = Hotspot.where(id: params[:hotspot_id])
    else
      # @hotsposts = Hotspot.all
    end

    render :json => @hotsposts.to_json(:include => :sources)
  end

  def hotspot_names
      @hotsposts = Hotspot.all
      @hotspot_names = []
      @hotsposts.each { |d|
        @hotspot_names << d.name
      }
      render json:@hotspot_names
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotspot
      @hotspot = Hotspot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotspot_params
      params.fetch(:hotspot, {})
    end
end
