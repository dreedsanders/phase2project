require "test_helper"

class WorkoutTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workout_types_index_url
    assert_response :success
  end

  test "should get show" do
    get workout_types_show_url
    assert_response :success
  end

  test "should get create" do
    get workout_types_create_url
    assert_response :success
  end

  test "should get new" do
    get workout_types_new_url
    assert_response :success
  end

  test "should get edit" do
    get workout_types_edit_url
    assert_response :success
  end

  test "should get update" do
    get workout_types_update_url
    assert_response :success
  end

  test "should get delete" do
    get workout_types_delete_url
    assert_response :success
  end
end
