require 'test_helper'

class ArchRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arch_request = arch_requests(:one)
  end

  test "should get index" do
    get arch_requests_url, as: :json
    assert_response :success
  end

  test "should create arch_request" do
    assert_difference('ArchRequest.count') do
      post arch_requests_url, params: { arch_request: { city: @arch_request.city, description: @arch_request.description, first_name: @arch_request.first_name, last_name: @arch_request.last_name, start_date: @arch_request.start_date, state: @arch_request.state, street: @arch_request.street, zip: @arch_request.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show arch_request" do
    get arch_request_url(@arch_request), as: :json
    assert_response :success
  end

  test "should update arch_request" do
    patch arch_request_url(@arch_request), params: { arch_request: { city: @arch_request.city, description: @arch_request.description, first_name: @arch_request.first_name, last_name: @arch_request.last_name, start_date: @arch_request.start_date, state: @arch_request.state, street: @arch_request.street, zip: @arch_request.zip } }, as: :json
    assert_response 200
  end

  test "should destroy arch_request" do
    assert_difference('ArchRequest.count', -1) do
      delete arch_request_url(@arch_request), as: :json
    end

    assert_response 204
  end
end
