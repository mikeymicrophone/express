require 'test_helper'

class CandidateStancesControllerTest < ActionController::TestCase
  setup do
    @candidate_stance = candidate_stances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidate_stances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate_stance" do
    assert_difference('CandidateStance.count') do
      post :create, candidate_stance: @candidate_stance.attributes
    end

    assert_redirected_to candidate_stance_path(assigns(:candidate_stance))
  end

  test "should show candidate_stance" do
    get :show, id: @candidate_stance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate_stance
    assert_response :success
  end

  test "should update candidate_stance" do
    put :update, id: @candidate_stance, candidate_stance: @candidate_stance.attributes
    assert_redirected_to candidate_stance_path(assigns(:candidate_stance))
  end

  test "should destroy candidate_stance" do
    assert_difference('CandidateStance.count', -1) do
      delete :destroy, id: @candidate_stance
    end

    assert_redirected_to candidate_stances_path
  end
end
