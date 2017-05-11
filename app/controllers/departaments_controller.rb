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

  def departament_name
    @departaments = Departament.all
    render json:@departaments
  end

  private

  def departament_params
    # whitelist params
    params.permit(:name)
  end

  def set_departament
    @departament = Departament.find(params[:id])
  end

end
