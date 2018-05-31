require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
	
  test 'indexページ' do
    get '/'
    assert_response :success
  end
end