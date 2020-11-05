require 'test_helper'

class ProjectsManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_manager = projects_managers(:one)
  end

  test "should get index" do
    get projects_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_manager_url
    assert_response :success
  end

  test "should create projects_manager" do
    assert_difference('ProjectsManager.count') do
      post projects_managers_url, params: { projects_manager: { allocated_members: @projects_manager.allocated_members, end_date: @projects_manager.end_date, manager: @projects_manager.manager, nps_rate: @projects_manager.nps_rate, number_of_changes: @projects_manager.number_of_changes, observations: @projects_manager.observations, project_value: @projects_manager.project_value, service_type: @projects_manager.service_type, start_date: @projects_manager.start_date } }
    end

    assert_redirected_to projects_manager_url(ProjectsManager.last)
  end

  test "should show projects_manager" do
    get projects_manager_url(@projects_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_manager_url(@projects_manager)
    assert_response :success
  end

  test "should update projects_manager" do
    patch projects_manager_url(@projects_manager), params: { projects_manager: { allocated_members: @projects_manager.allocated_members, end_date: @projects_manager.end_date, manager: @projects_manager.manager, nps_rate: @projects_manager.nps_rate, number_of_changes: @projects_manager.number_of_changes, observations: @projects_manager.observations, project_value: @projects_manager.project_value, service_type: @projects_manager.service_type, start_date: @projects_manager.start_date } }
    assert_redirected_to projects_manager_url(@projects_manager)
  end

  test "should destroy projects_manager" do
    assert_difference('ProjectsManager.count', -1) do
      delete projects_manager_url(@projects_manager)
    end

    assert_redirected_to projects_managers_url
  end
end
