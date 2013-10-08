require 'test_helper'

class DayTimeslotsControllerTest < ActionController::TestCase
  setup do
    @day_timeslot = day_timeslots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_timeslots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_timeslot" do
    assert_difference('DayTimeslot.count') do
      post :create, day_timeslot: { day_id: @day_timeslot.day_id, timeslot_id: @day_timeslot.timeslot_id }
    end

    assert_redirected_to day_timeslot_path(assigns(:day_timeslot))
  end

  test "should show day_timeslot" do
    get :show, id: @day_timeslot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day_timeslot
    assert_response :success
  end

  test "should update day_timeslot" do
    patch :update, id: @day_timeslot, day_timeslot: { day_id: @day_timeslot.day_id, timeslot_id: @day_timeslot.timeslot_id }
    assert_redirected_to day_timeslot_path(assigns(:day_timeslot))
  end

  test "should destroy day_timeslot" do
    assert_difference('DayTimeslot.count', -1) do
      delete :destroy, id: @day_timeslot
    end

    assert_redirected_to day_timeslots_path
  end
end
