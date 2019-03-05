require 'test_helper'

class MailchimpControllerTest < ActionDispatch::IntegrationTest
  test "should get subscribe" do
    get mailchimp_subscribe_url
    assert_response :success
  end

end
