require 'test_helper'

class PiecesCommandesControllerTest < ActionController::TestCase
  setup do
    @pieces_commande = pieces_commandes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pieces_commandes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pieces_commande" do
    assert_difference('PiecesCommande.count') do
      post :create, :pieces_commande => @pieces_commande.attributes
    end

    assert_redirected_to pieces_commande_path(assigns(:pieces_commande))
  end

  test "should show pieces_commande" do
    get :show, :id => @pieces_commande.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pieces_commande.to_param
    assert_response :success
  end

  test "should update pieces_commande" do
    put :update, :id => @pieces_commande.to_param, :pieces_commande => @pieces_commande.attributes
    assert_redirected_to pieces_commande_path(assigns(:pieces_commande))
  end

  test "should destroy pieces_commande" do
    assert_difference('PiecesCommande.count', -1) do
      delete :destroy, :id => @pieces_commande.to_param
    end

    assert_redirected_to pieces_commandes_path
  end
end
