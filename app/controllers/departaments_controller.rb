class DepartamentsController < ApplicationController

  before_action :set_departament, only: [:show, :update, :destroy]

  # GET /departaments
  def index
    @departaments = Departament.all
    render json:@departaments
  end

  # GET /departaments/:id
  def show
    render json:(@departament)
  end

   # POST /departaments
  def create
    @departament = Departament.new(departament_params)

    if @departament.save
      render json:(@departament), status: :created, location: @departament
    else
      render json: @departament.errors, status: :unprocessable_entity
    end
  end

  def search_delivery_by_source

    @deliveries = Delivery.where(source_id: params[:departament_id])

    if @deliveries.empty?
      @deliveries = Delivery.all
    end

    render json:@deliveries
  end

  # PUT /departaments/:id
  def update
    @departament.update(departament_params)
    head :no_content
  end

  # DELETE /departaments/:id
  def destroy
    @departament.destroy
    head :no_content
  end

  #GET departament_name
  def departament_name
      @departaments = Departament.all
      @depart_name = []
      @departaments.each { |d|
        @depart_name << d.departament_name
      }
      render json:@depart_name
  end

  private

  def departament_params
    # whitelist params
    params.fetch(:departament, {})
  end

  def set_departament
    @departament = Departament.find(params[:id])
  end

end
