require 'test_helper'

class CommandesControllerTest < ActionController::TestCase
  setup do
    @commande = commandes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commandes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commande" do
    assert_difference('Commande.count') do
      post :create, :commande => @commande.attributes
    end

    assert_redirected_to commande_path(assigns(:commande))
  end

  test "should show commande" do
    get :show, :id => @commande.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @commande.to_param
    assert_response :success
  end

  test "should update commande" do
    put :update, :id => @commande.to_param, :commande => @commande.attributes
    assert_redirected_to commande_path(assigns(:commande))
  end

  test "should destroy commande" do
    assert_difference('Commande.count', -1) do
      delete :destroy, :id => @commande.to_param
    end

    assert_redirected_to commandes_path
  end
end
