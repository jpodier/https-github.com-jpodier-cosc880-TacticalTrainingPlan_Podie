require 'test_helper'

class CourseRequestsControllerTest < ActionController::TestCase
  setup do
    @course_request = course_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_request" do
    assert_difference('CourseRequest.count') do
      post :create, course_request: { actual_travelcost: @course_request.actual_travelcost, approval_status: @course_request.approval_status, completion_status: @course_request.completion_status, course_name: @course_request.course_name, description: @course_request.description, location: @course_request.location, planned_travelcost: @course_request.planned_travelcost, total_cost: @course_request.total_cost, training_category: @course_request.training_category, training_date: @course_request.training_date, training_method: @course_request.training_method, tuition_cost: @course_request.tuition_cost }
    end

    assert_redirected_to course_request_path(assigns(:course_request))
  end

  test "should show course_request" do
    get :show, id: @course_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_request
    assert_response :success
  end

  test "should update course_request" do
    patch :update, id: @course_request, course_request: { actual_travelcost: @course_request.actual_travelcost, approval_status: @course_request.approval_status, completion_status: @course_request.completion_status, course_name: @course_request.course_name, description: @course_request.description, location: @course_request.location, planned_travelcost: @course_request.planned_travelcost, total_cost: @course_request.total_cost, training_category: @course_request.training_category, training_date: @course_request.training_date, training_method: @course_request.training_method, tuition_cost: @course_request.tuition_cost }
    assert_redirected_to course_request_path(assigns(:course_request))
  end

  test "should destroy course_request" do
    assert_difference('CourseRequest.count', -1) do
      delete :destroy, id: @course_request
    end

    assert_redirected_to course_requests_path
  end
end
