require 'test_helper'

class CompetencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competence = competences(:one)
  end

  test "should get index" do
    get competences_url, as: :json
    assert_response :success
  end

  test "should create competence" do
    assert_difference('Competence.count') do
      post competences_url, params: { competence: { comp_img: @competence.comp_img, comp_title: @competence.comp_title } }, as: :json
    end

    assert_response 201
  end

  test "should show competence" do
    get competence_url(@competence), as: :json
    assert_response :success
  end

  test "should update competence" do
    patch competence_url(@competence), params: { competence: { comp_img: @competence.comp_img, comp_title: @competence.comp_title } }, as: :json
    assert_response 200
  end

  test "should destroy competence" do
    assert_difference('Competence.count', -1) do
      delete competence_url(@competence), as: :json
    end

    assert_response 204
  end
end
