class ArchRequestApprovalsController < ApplicationController
  before_action :set_arch_request_approval, only: [:show, :update, :destroy]

  # GET /arch_request_approvals
  def index
    @arch_request_approvals = ArchRequestApproval.all

    render json: @arch_request_approvals
  end

  # GET /arch_request_approvals/1
  def show
    render json: @arch_request_approval
  end

  # POST /arch_request_approvals
  def create
    @arch_request_approval = ArchRequestApproval.new(arch_request_approval_params)

    if @arch_request_approval.save
      render json: @arch_request_approval, status: :created, location: @arch_request_approval
    else
      render json: @arch_request_approval.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arch_request_approvals/1
  def update
    if @arch_request_approval.update(arch_request_approval_params)
      render json: @arch_request_approval
    else
      render json: @arch_request_approval.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arch_request_approvals/1
  def destroy
    @arch_request_approval.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arch_request_approval
      @arch_request_approval = ArchRequestApproval.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arch_request_approval_params
      params.require(:arch_request_approval).permit(:user_id, :arch_request_id)
    end
end
