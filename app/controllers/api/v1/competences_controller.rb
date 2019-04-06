class Api::V1::CompetencesController < ApplicationController
  before_action :set_competence, only: [:show, :update, :destroy]

  # GET /competences
  def index
    @competences = Competence.all

    render json: @competences
  end

  # GET /competences/1
  def show
    render json: @competence
  end

  # POST /competences
  def create
    @competence = Competence.new(competence_params)

    if @competence.save
      render json: @competence, status: :created, location: @competence
    else
      render json: @competence.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /competences/1
  def update
    if @competence.update(competence_params)
      render json: @competence
    else
      render json: @competence.errors, status: :unprocessable_entity
    end
  end

  # DELETE /competences/1
  def destroy
    @competence.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competence
      @competence = Competence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def competence_params
      params.require(:competence).permit(:comp_img, :comp_title)
    end
end
