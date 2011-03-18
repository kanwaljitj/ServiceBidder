require 'test_helper'

class SkillReferencesControllerTest < ActionController::TestCase
  setup do
    @skill_reference = skill_references(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_references)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_reference" do
    assert_difference('SkillReference.count') do
      post :create, :skill_reference => @skill_reference.attributes
    end

    assert_redirected_to skill_reference_path(assigns(:skill_reference))
  end

  test "should show skill_reference" do
    get :show, :id => @skill_reference.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skill_reference.to_param
    assert_response :success
  end

  test "should update skill_reference" do
    put :update, :id => @skill_reference.to_param, :skill_reference => @skill_reference.attributes
    assert_redirected_to skill_reference_path(assigns(:skill_reference))
  end

  test "should destroy skill_reference" do
    assert_difference('SkillReference.count', -1) do
      delete :destroy, :id => @skill_reference.to_param
    end

    assert_redirected_to skill_references_path
  end
end
