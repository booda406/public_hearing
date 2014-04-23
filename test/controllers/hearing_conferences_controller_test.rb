require 'test_helper'

class HearingConferencesControllerTest < ActionController::TestCase
  setup do
    @hearing_conference = hearing_conferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hearing_conferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hearing_conference" do
    assert_difference('HearingConference.count') do
      post :create, hearing_conference: { category_id: @hearing_conference.category_id, count: @hearing_conference.count, description: @hearing_conference.description, happen_date: @hearing_conference.happen_date, location: @hearing_conference.location, title: @hearing_conference.title, wiki: @hearing_conference.wiki }
    end

    assert_redirected_to hearing_conference_path(assigns(:hearing_conference))
  end

  test "should show hearing_conference" do
    get :show, id: @hearing_conference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hearing_conference
    assert_response :success
  end

  test "should update hearing_conference" do
    patch :update, id: @hearing_conference, hearing_conference: { category_id: @hearing_conference.category_id, count: @hearing_conference.count, description: @hearing_conference.description, happen_date: @hearing_conference.happen_date, location: @hearing_conference.location, title: @hearing_conference.title, wiki: @hearing_conference.wiki }
    assert_redirected_to hearing_conference_path(assigns(:hearing_conference))
  end

  test "should destroy hearing_conference" do
    assert_difference('HearingConference.count', -1) do
      delete :destroy, id: @hearing_conference
    end

    assert_redirected_to hearing_conferences_path
  end
end
