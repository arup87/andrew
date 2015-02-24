class VetsController < ApplicationController
  def index
    @vets = Vet.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @vets, :except=>  [:created_at, :updated_at] }
      format.json { render json: @vets, :except=>  [:created_at, :updated_at] }
    end

  end

  def show
    @vet = Vet.find(params[:id])
  end

  def new
    @vet = Vet.new
  end

  def create
    @vet = Vet.new(vet_params)
    if @vet.save
      redirect_to @vet
    else
      render :new
    end
  end

  def edit
    @vet = Vet.find(params[:id])
  end

  def update
    @vet = Vet.find(params[:id])
    @vet.update(vet_params)
    redirect_to vet_pathe(@vet)
  end

  private

  def vet_params
    params.require(:vet).permit(:name, :address, :address_line_two, :city, :state, :zip, :school, :years_in_practice)
  end

end
