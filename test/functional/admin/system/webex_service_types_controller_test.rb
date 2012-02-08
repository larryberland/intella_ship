require 'test_helper'

class Admin::System::WebexServiceTypesControllerTest < ActionController::TestCase
  setup do
    @admin_system_webex_service_type = admin_system_webex_service_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_system_webex_service_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_system_webex_service_type" do
    assert_difference('Admin::System::WebexServiceType.count') do
      post :create, admin_system_webex_service_type: @admin_system_webex_service_type.attributes
    end

    assert_redirected_to admin_system_webex_service_type_path(assigns(:admin_system_webex_service_type))
  end

  test "should show admin_system_webex_service_type" do
    get :show, id: @admin_system_webex_service_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_system_webex_service_type.to_param
    assert_response :success
  end

  test "should update admin_system_webex_service_type" do
    put :update, id: @admin_system_webex_service_type.to_param, admin_system_webex_service_type: @admin_system_webex_service_type.attributes
    assert_redirected_to admin_system_webex_service_type_path(assigns(:admin_system_webex_service_type))
  end

  test "should destroy admin_system_webex_service_type" do
    assert_difference('Admin::System::WebexServiceType.count', -1) do
      delete :destroy, id: @admin_system_webex_service_type.to_param
    end

    assert_redirected_to admin_system_webex_service_types_path
  end
end
