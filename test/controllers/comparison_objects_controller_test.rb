require 'test_helper'

class ComparisonObjectsControllerTest < ActionController::TestCase
  setup do
    @comparison_object = comparison_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comparison_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comparison_object" do
    assert_difference('ComparisonObject.count') do
      post :create, comparison_object: { color: @comparison_object.color, icon: @comparison_object.icon, name: @comparison_object.name }
    end

    assert_redirected_to comparison_object_path(assigns(:comparison_object))
  end

  test "should show comparison_object" do
    get :show, id: @comparison_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comparison_object
    assert_response :success
  end

  test "should update comparison_object" do
    patch :update, id: @comparison_object, comparison_object: { color: @comparison_object.color, icon: @comparison_object.icon, name: @comparison_object.name }
    assert_redirected_to comparison_object_path(assigns(:comparison_object))
  end

  test "should destroy comparison_object" do
    assert_difference('ComparisonObject.count', -1) do
      delete :destroy, id: @comparison_object
    end

    assert_redirected_to comparison_objects_path
  end
end
