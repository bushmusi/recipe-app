require 'test_helper'

class InventoryFoodsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get inventory_foods_index_url
    assert_response :success
  end

  test 'should get new' do
    get inventory_foods_new_url
    assert_response :success
  end
end
