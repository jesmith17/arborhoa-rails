class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]


  def show
    render json: @user
  end

  def index
    @users = User.all

    render json: @users
  end


  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def use_params
      params.fetch(:user, {}).permit(:first_name, :last_name, :position, :street, :city, :state, :zip, :bio)
    end

end
