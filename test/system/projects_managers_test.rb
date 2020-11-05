require "application_system_test_case"

class ProjectsManagersTest < ApplicationSystemTestCase
  setup do
    @projects_manager = projects_managers(:one)
  end

  test "visiting the index" do
    visit projects_managers_url
    assert_selector "h1", text: "Projects Managers"
  end

  test "creating a Projects manager" do
    visit projects_managers_url
    click_on "New Projects Manager"

    fill_in "Allocated members", with: @projects_manager.allocated_members
    fill_in "End date", with: @projects_manager.end_date
    fill_in "Manager", with: @projects_manager.manager
    fill_in "Nps rate", with: @projects_manager.nps_rate
    fill_in "Number of changes", with: @projects_manager.number_of_changes
    fill_in "Observations", with: @projects_manager.observations
    fill_in "Project value", with: @projects_manager.project_value
    fill_in "Service type", with: @projects_manager.service_type
    fill_in "Start date", with: @projects_manager.start_date
    click_on "Create Projects manager"

    assert_text "Projects manager was successfully created"
    click_on "Back"
  end

  test "updating a Projects manager" do
    visit projects_managers_url
    click_on "Edit", match: :first

    fill_in "Allocated members", with: @projects_manager.allocated_members
    fill_in "End date", with: @projects_manager.end_date
    fill_in "Manager", with: @projects_manager.manager
    fill_in "Nps rate", with: @projects_manager.nps_rate
    fill_in "Number of changes", with: @projects_manager.number_of_changes
    fill_in "Observations", with: @projects_manager.observations
    fill_in "Project value", with: @projects_manager.project_value
    fill_in "Service type", with: @projects_manager.service_type
    fill_in "Start date", with: @projects_manager.start_date
    click_on "Update Projects manager"

    assert_text "Projects manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Projects manager" do
    visit projects_managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projects manager was successfully destroyed"
  end
end
