require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home = homes(:one)
  end

  test "should get index" do
    get homes_url, as: :json
    assert_response :success
  end

  test "should create home" do
    assert_difference('Home.count') do
      post homes_url, params: { home: { car_description_appli: @home.car_description_appli, car_description_competences: @home.car_description_competences, car_description_projets: @home.car_description_projets, car_img_appli: @home.car_img_appli, car_img_competences: @home.car_img_competences, car_img_projets: @home.car_img_projets, car_title_appli: @home.car_title_appli, car_title_competences: @home.car_title_competences, car_title_projets: @home.car_title_projets, is_index: @home.is_index, nav_logo: @home.nav_logo, pres_description: @home.pres_description, pres_img: @home.pres_img, pres_title: @home.pres_title } }, as: :json
    end

    assert_response 201
  end

  test "should show home" do
    get home_url(@home), as: :json
    assert_response :success
  end

  test "should update home" do
    patch home_url(@home), params: { home: { car_description_appli: @home.car_description_appli, car_description_competences: @home.car_description_competences, car_description_projets: @home.car_description_projets, car_img_appli: @home.car_img_appli, car_img_competences: @home.car_img_competences, car_img_projets: @home.car_img_projets, car_title_appli: @home.car_title_appli, car_title_competences: @home.car_title_competences, car_title_projets: @home.car_title_projets, is_index: @home.is_index, nav_logo: @home.nav_logo, pres_description: @home.pres_description, pres_img: @home.pres_img, pres_title: @home.pres_title } }, as: :json
    assert_response 200
  end

  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete home_url(@home), as: :json
    end

    assert_response 204
  end
end
