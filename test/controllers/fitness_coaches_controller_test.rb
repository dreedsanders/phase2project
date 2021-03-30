require "test_helper"

class FitnessCoachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fitness_coaches_index_url
    assert_response :success
  end

  test "should get show" do
    get fitness_coaches_show_url
    assert_response :success
  end

  test "should get create" do
    get fitness_coaches_create_url
    assert_response :success
  end

  test "should get new" do
    get fitness_coaches_new_url
    assert_response :success
  end

  test "should get edit" do
    get fitness_coaches_edit_url
    assert_response :success
  end

  test "should get update" do
    get fitness_coaches_update_url
    assert_response :success
  end

  test "should get delete" do
    get fitness_coaches_delete_url
    assert_response :success
  end
end
