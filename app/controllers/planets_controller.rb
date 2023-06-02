class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[show edit update destroy index]

  def index
    @planets = policy_scope(Planet)
    # @planets = Planet.all
    if params[:query].present?
      @planets = @planets.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    authorize @planet
  end

  def new
    @planet = Planet.new
    authorize @planet
  end

  def create
    @planet = Planet.new(planet_params)
    # @planet.user = current_user
    authorize @planet
    if @planet.save
      redirect_to planet_path(@planet), notice: "Planet was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @planet
  end

  def update
    authorize @planet
    if @planet.update(planet_params)
      redirect_to @planet, notice: "Planet was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @planet
    @planet.destroy
    # No need for app/views/planets/destroy.html.erb
    redirect_to planets_path, status: :see_other
  end

  private

  def set_planet
    p params
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :description, :location, :price, :rating)
  end
end
