require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Community Resources", with: @project.community_resources
    fill_in "Compentences", with: @project.compentences
    fill_in "Course", with: @project.course
    fill_in "Course Level", with: @project.course_level
    fill_in "Driven Question", with: @project.driven_question
    fill_in "Duration", with: @project.duration
    fill_in "Entry Event", with: @project.entry_event
    fill_in "Equipments", with: @project.equipments
    fill_in "Materials", with: @project.materials
    fill_in "Notes", with: @project.notes
    fill_in "Onsite People Facilities", with: @project.onsite_people_facilities
    fill_in "Other Subject Area", with: @project.other_subject_area
    fill_in "Product Public", with: @project.product_public
    fill_in "Reflection Methods", with: @project.reflection_methods
    fill_in "Status", with: @project.status
    fill_in "Teacher", with: @project.teacher_id
    fill_in "Title", with: @project.title
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Community Resources", with: @project.community_resources
    fill_in "Compentences", with: @project.compentences
    fill_in "Course", with: @project.course
    fill_in "Course Level", with: @project.course_level
    fill_in "Driven Question", with: @project.driven_question
    fill_in "Duration", with: @project.duration
    fill_in "Entry Event", with: @project.entry_event
    fill_in "Equipments", with: @project.equipments
    fill_in "Materials", with: @project.materials
    fill_in "Notes", with: @project.notes
    fill_in "Onsite People Facilities", with: @project.onsite_people_facilities
    fill_in "Other Subject Area", with: @project.other_subject_area
    fill_in "Product Public", with: @project.product_public
    fill_in "Reflection Methods", with: @project.reflection_methods
    fill_in "Status", with: @project.status
    fill_in "Teacher", with: @project.teacher_id
    fill_in "Title", with: @project.title
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
