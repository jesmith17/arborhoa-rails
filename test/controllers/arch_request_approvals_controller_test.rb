require 'test_helper'

class ArchRequestApprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arch_request_approval = arch_request_approvals(:one)
  end

  test "should get index" do
    get arch_request_approvals_url, as: :json
    assert_response :success
  end

  test "should create arch_request_approval" do
    assert_difference('ArchRequestApproval.count') do
      post arch_request_approvals_url, params: { arch_request_approval: { arch_request_id: @arch_request_approval.arch_request_id, user_id: @arch_request_approval.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show arch_request_approval" do
    get arch_request_approval_url(@arch_request_approval), as: :json
    assert_response :success
  end

  test "should update arch_request_approval" do
    patch arch_request_approval_url(@arch_request_approval), params: { arch_request_approval: { arch_request_id: @arch_request_approval.arch_request_id, user_id: @arch_request_approval.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy arch_request_approval" do
    assert_difference('ArchRequestApproval.count', -1) do
      delete arch_request_approval_url(@arch_request_approval), as: :json
    end

    assert_response 204
  end
end
