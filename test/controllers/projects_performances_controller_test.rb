require 'test_helper'

class ProjectsPerformancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_performance = projects_performances(:one)
  end

  test "should get index" do
    get projects_performances_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_performance_url
    assert_response :success
  end

  test "should create projects_performance" do
    assert_difference('ProjectsPerformance.count') do
      post projects_performances_url, params: { projects_performance: { accomplished: @projects_performance.accomplished, expected_days: @projects_performance.expected_days, number_of_sprints: @projects_performance.number_of_sprints, phase_status: @projects_performance.phase_status, running_days: @projects_performance.running_days } }
    end

    assert_redirected_to projects_performance_url(ProjectsPerformance.last)
  end

  test "should show projects_performance" do
    get projects_performance_url(@projects_performance)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_performance_url(@projects_performance)
    assert_response :success
  end

  test "should update projects_performance" do
    patch projects_performance_url(@projects_performance), params: { projects_performance: { accomplished: @projects_performance.accomplished, expected_days: @projects_performance.expected_days, number_of_sprints: @projects_performance.number_of_sprints, phase_status: @projects_performance.phase_status, running_days: @projects_performance.running_days } }
    assert_redirected_to projects_performance_url(@projects_performance)
  end

  test "should destroy projects_performance" do
    assert_difference('ProjectsPerformance.count', -1) do
      delete projects_performance_url(@projects_performance)
    end

    assert_redirected_to projects_performances_url
  end
end
