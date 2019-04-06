class  Api::V1::HomesController < ApplicationController
  before_action :set_home, only: [:show, :update, :destroy]

  # GET /homes
  def index
    @homes = Home.all

    render json: @homes
  end

  # GET /homes/1
  def show
    render json: @home
  end

  # POST /homes
  def create
    @home = Home.new(home_params)

    if @home.save
      render json: @home, status: :created, location: @home
    else
      render json: @home.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /homes/1
  def update
    if @home.update(home_params)
      render json: @home
    else
      render json: @home.errors, status: :unprocessable_entity
    end
  end

  # DELETE /homes/1
  def destroy
    @home.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def home_params
      params.require(:home).permit(:nav_logo, :car_img_competences, :car_img_projets, :car_img_appli, :car_title_competences, :car_title_projets, :car_title_appli, :car_description_competences, :car_description_projets, :car_description_appli, :pres_title, :pres_description, :pres_img, :is_index)
    end
end
