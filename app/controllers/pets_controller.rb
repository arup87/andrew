class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :type_of_pet, :breed, :age, :weight, :last_visit)
  end
end
