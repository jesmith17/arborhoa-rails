class ArchRequestsController < ApplicationController
  before_action :set_arch_request, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:create, :confirm]

  # GET /arch_requests
  def index
    @arch_requests = ArchRequest.all

    render json: @arch_requests
  end

  # GET /arch_requests/1
  def show
    render json: @arch_request
  end

  def confirm
    request = ArchRequest.where(confirmation_code: params[:confirm_code])
    unless request == nil
      request.confirmed = true
      request.save
    end
  end

  # POST /arch_requests
  def create
    @arch_request = ArchRequest.new(arch_request_params)

    if @arch_request.save
      render json: @arch_request, status: :created, location: @arch_request
    else
      render json: @arch_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arch_requests/1
  def update
    if @arch_request.update(arch_request_params)
      render json: @arch_request
    else
      render json: @arch_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arch_requests/1
  def destroy
    @arch_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arch_request
      @arch_request = ArchRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arch_request_params
      params.require(:arch_request).permit(:first_name, :last_name, :street, :city, :state, :zip, :description, :start_date, :email)
    end
end
