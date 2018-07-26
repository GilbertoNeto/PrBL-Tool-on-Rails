require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { community_resources: @project.community_resources, compentences: @project.compentences, course: @project.course, course_level: @project.course_level, driven_question: @project.driven_question, duration: @project.duration, entry_event: @project.entry_event, equipments: @project.equipments, materials: @project.materials, notes: @project.notes, onsite_people_facilities: @project.onsite_people_facilities, other_subject_area: @project.other_subject_area, product_public: @project.product_public, reflection_methods: @project.reflection_methods, status: @project.status, teacher_id: @project.teacher_id, title: @project.title } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { community_resources: @project.community_resources, compentences: @project.compentences, course: @project.course, course_level: @project.course_level, driven_question: @project.driven_question, duration: @project.duration, entry_event: @project.entry_event, equipments: @project.equipments, materials: @project.materials, notes: @project.notes, onsite_people_facilities: @project.onsite_people_facilities, other_subject_area: @project.other_subject_area, product_public: @project.product_public, reflection_methods: @project.reflection_methods, status: @project.status, teacher_id: @project.teacher_id, title: @project.title } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
