require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get recipes_index_url
    assert_response :success
  end

  test 'should get show' do
    get recipes_show_url
    assert_response :success
  end

  test 'should get new' do
    get recipes_new_url
    assert_response :success
  end

  test 'should get public_recipes' do
    get recipes_public_recipes_url
    assert_response :success
  end
end
