require 'test_helper'

class MetricObjectsControllerTest < ActionController::TestCase
  setup do
    @metric_object = metric_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metric_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metric_object" do
    assert_difference('MetricObject.count') do
      post :create, metric_object: { comparison_object_id: @metric_object.comparison_object_id, metric_id: @metric_object.metric_id, value: @metric_object.value }
    end

    assert_redirected_to metric_object_path(assigns(:metric_object))
  end

  test "should show metric_object" do
    get :show, id: @metric_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metric_object
    assert_response :success
  end

  test "should update metric_object" do
    patch :update, id: @metric_object, metric_object: { comparison_object_id: @metric_object.comparison_object_id, metric_id: @metric_object.metric_id, value: @metric_object.value }
    assert_redirected_to metric_object_path(assigns(:metric_object))
  end

  test "should destroy metric_object" do
    assert_difference('MetricObject.count', -1) do
      delete :destroy, id: @metric_object
    end

    assert_redirected_to metric_objects_path
  end
end
