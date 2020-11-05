require "application_system_test_case"

class ProjectsPerformancesTest < ApplicationSystemTestCase
  setup do
    @projects_performance = projects_performances(:one)
  end

  test "visiting the index" do
    visit projects_performances_url
    assert_selector "h1", text: "Projects Performances"
  end

  test "creating a Projects performance" do
    visit projects_performances_url
    click_on "New Projects Performance"

    fill_in "Accomplished", with: @projects_performance.accomplished
    fill_in "Expected days", with: @projects_performance.expected_days
    fill_in "Number of sprints", with: @projects_performance.number_of_sprints
    fill_in "Phase status", with: @projects_performance.phase_status
    fill_in "Running days", with: @projects_performance.running_days
    click_on "Create Projects performance"

    assert_text "Projects performance was successfully created"
    click_on "Back"
  end

  test "updating a Projects performance" do
    visit projects_performances_url
    click_on "Edit", match: :first

    fill_in "Accomplished", with: @projects_performance.accomplished
    fill_in "Expected days", with: @projects_performance.expected_days
    fill_in "Number of sprints", with: @projects_performance.number_of_sprints
    fill_in "Phase status", with: @projects_performance.phase_status
    fill_in "Running days", with: @projects_performance.running_days
    click_on "Update Projects performance"

    assert_text "Projects performance was successfully updated"
    click_on "Back"
  end

  test "destroying a Projects performance" do
    visit projects_performances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projects performance was successfully destroyed"
  end
end
