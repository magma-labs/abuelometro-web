# frozen_string_literal: true
class EldersController < ApplicationController
  before_action :set_elder, only: [:show, :edit, :update, :destroy]

  # GET /elders
  # GET /elders.json
  def index
    @elders = Elder.all
  end

  # GET /elders/1
  # GET /elders/1.json
  def show
  end

  # GET /elders/new
  def new
    @elder = Elder.new
  end

  # GET /elders/1/edit
  def edit
  end

  # POST /elders
  # POST /elders.json
  def create
    @elder = Elder.new(elder_params)

    respond_to do |format|
      if @elder.save
        format.html { redirect_to @elder, notice: 'Se añadió correctamente la información.' }
        format.json { render :show, status: :created, location: @elder }
      else
        format.html { render :new }
        format.json { render json: @elder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elders/1
  # PATCH/PUT /elders/1.json
  def update
    respond_to do |format|
      if @elder.update(elder_params)
        format.html { redirect_to @elder, notice: 'Se editó correctamente la información.' }
        format.json { render :show, status: :ok, location: @elder }
      else
        format.html { render :edit }
        format.json { render json: @elder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elders/1
  # DELETE /elders/1.json
  def destroy
    @elder.destroy
    respond_to do |format|
      format.html { redirect_to elders_url, notice: 'Se eliminó correctamente la información.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elder
      @elder = Elder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elder_params
      params.require(:elder).permit(:name, :first_name, :last_name, :blood_type, :birthdate, :weight, :height)
    end
end
