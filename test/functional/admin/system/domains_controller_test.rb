require 'test_helper'

class Admin::System::DomainsControllerTest < ActionController::TestCase
  setup do
    @admin_system_domain = admin_system_domains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_system_domains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_system_domain" do
    assert_difference('Admin::System::Domain.count') do
      post :create, admin_system_domain: @admin_system_domain.attributes
    end

    assert_redirected_to admin_system_domain_path(assigns(:admin_system_domain))
  end

  test "should show admin_system_domain" do
    get :show, id: @admin_system_domain.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_system_domain.to_param
    assert_response :success
  end

  test "should update admin_system_domain" do
    put :update, id: @admin_system_domain.to_param, admin_system_domain: @admin_system_domain.attributes
    assert_redirected_to admin_system_domain_path(assigns(:admin_system_domain))
  end

  test "should destroy admin_system_domain" do
    assert_difference('Admin::System::Domain.count', -1) do
      delete :destroy, id: @admin_system_domain.to_param
    end

    assert_redirected_to admin_system_domains_path
  end
end
