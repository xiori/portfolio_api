require 'test_helper'

class ProjetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projet = projets(:one)
  end

  test "should get index" do
    get projets_url, as: :json
    assert_response :success
  end

  test "should create projet" do
    assert_difference('Projet.count') do
      post projets_url, params: { projet: { projet_description: @projet.projet_description, projet_img: @projet.projet_img, projet_link: @projet.projet_link, projet_title: @projet.projet_title } }, as: :json
    end

    assert_response 201
  end

  test "should show projet" do
    get projet_url(@projet), as: :json
    assert_response :success
  end

  test "should update projet" do
    patch projet_url(@projet), params: { projet: { projet_description: @projet.projet_description, projet_img: @projet.projet_img, projet_link: @projet.projet_link, projet_title: @projet.projet_title } }, as: :json
    assert_response 200
  end

  test "should destroy projet" do
    assert_difference('Projet.count', -1) do
      delete projet_url(@projet), as: :json
    end

    assert_response 204
  end
end
