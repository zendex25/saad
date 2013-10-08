require 'test_helper'

class SectionSubjectsControllerTest < ActionController::TestCase
  setup do
    @section_subject = section_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_subject" do
    assert_difference('SectionSubject.count') do
      post :create, section_subject: { section_id: @section_subject.section_id, subject_id: @section_subject.subject_id }
    end

    assert_redirected_to section_subject_path(assigns(:section_subject))
  end

  test "should show section_subject" do
    get :show, id: @section_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_subject
    assert_response :success
  end

  test "should update section_subject" do
    patch :update, id: @section_subject, section_subject: { section_id: @section_subject.section_id, subject_id: @section_subject.subject_id }
    assert_redirected_to section_subject_path(assigns(:section_subject))
  end

  test "should destroy section_subject" do
    assert_difference('SectionSubject.count', -1) do
      delete :destroy, id: @section_subject
    end

    assert_redirected_to section_subjects_path
  end
end
