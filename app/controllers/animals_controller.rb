class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET /animals
  # GET /animals.json
  def index
    @animals = Animal.all
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
  end

  # GET /animals/new
  def new
    @cuidadors = User.all()
    @zonas = Zona.all()
    @animal = Animal.new
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params)
    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
      @cuidadors = User.all()
      @zonas = Zona.all()
  end

  def update
    @animals = Animal.all
    @animal.update_attributes(animal_params)
  end

  def delete
   @animal = Animal.find(params[:animal_id])
  end

  def destroy
    @animals = Animal.all
    @animal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:nom, :raza, :zona_id, :any_naixement, :cuidador_id)
    end
end
