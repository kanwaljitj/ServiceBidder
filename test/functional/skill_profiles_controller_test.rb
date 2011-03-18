require 'test_helper'

class SkillProfilesControllerTest < ActionController::TestCase
  setup do
    @skill_profile = skill_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_profile" do
    assert_difference('SkillProfile.count') do
      post :create, :skill_profile => @skill_profile.attributes
    end

    assert_redirected_to skill_profile_path(assigns(:skill_profile))
  end

  test "should show skill_profile" do
    get :show, :id => @skill_profile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skill_profile.to_param
    assert_response :success
  end

  test "should update skill_profile" do
    put :update, :id => @skill_profile.to_param, :skill_profile => @skill_profile.attributes
    assert_redirected_to skill_profile_path(assigns(:skill_profile))
  end

  test "should destroy skill_profile" do
    assert_difference('SkillProfile.count', -1) do
      delete :destroy, :id => @skill_profile.to_param
    end

    assert_redirected_to skill_profiles_path
  end
end
