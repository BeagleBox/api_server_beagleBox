class AdminsController < ApplicationController

  before_action :set_admin, only: [:show, :update, :destroy]

  # GET /admins
  def index
    @admins = Admin.all
    render json:@admins
  end

  # GET /admins/:id
  def show
    render json:(@admin)
  end

  # PUT /admins/:id
  def update
    @admin.update(admin_params)
    head :no_content
  end

  # DELETE /admins/:id
  def destroy
    @admin.destroy
    head :no_content
  end



  private

  def admin_params
    # whitelist params
    params.permit(:admin_name,:admin_registration,:password_digest,:admin_email)
  end

  def set_admin
    @admin = admin.find(params[:id])
    @admin.contacts = @admin.contacts
  end


end
