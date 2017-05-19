class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :update, :destroy]

  # GET /routes
  def index
    @routes = Route.all
  end

  # GET /routes/:id
  def show
  end

  # POST /routes
  def create
    @route = Route.new(route_params)

    if @route.save
      render :show, status: :created, location: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routes/:id
  def update
    if @route.update(route_params)
      render :show, status: :ok, location: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routes/:id
  def destroy
    @route.destroy
  end

  def search_routes_by_source_destination

    @routes = Route.where(source_id: params[:source_id], destination_id: params[:destination_id])
    render json:@routes
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_params
      params.fetch(:route, {})
    end
end
