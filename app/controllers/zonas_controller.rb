class ZonasController < ApplicationController
  before_action :set_zona, only: [:show, :edit, :update, :destroy]

  # GET /zonas
  # GET /zonas.json
  def index
    @zonas = Zona.all
  end

  # GET /zonas/1
  # GET /zonas/1.json
  def show
  end

  # GET /zonas/new
  def new
    @zona = Zona.new
  end

  # GET /zonas/1/edit
  def edit

  end

  # POST /zonas
  # POST /zonas.json
  def create
  @zonas = Zona.all
  @zona = Zona.create(zona_params)
  end

  # PATCH/PUT /zonas/1
  # PATCH/PUT /zonas/1.json
  def update
    @zonas = Zona.all
    @zona.update_attributes(zona_params)
  end

  def delete
    @zona = Zona.find(params[:zona_id])
  end

  def destroy
    @zonas = Zona.all
    @zona.destroy
  end

  # DELETE /zonas/1
  # DELETE /zonas/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zona
      @zona = Zona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zona_params
      params.require(:zona).permit(:nom, :clima, :temperatura, :humitat)
    end
end
