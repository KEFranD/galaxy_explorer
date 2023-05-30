class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update destroy]

  def index
    @planets = policy_scope(Planet)
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
    @planet.user = current_user
    authorize @planet
    @planet.save
    # No need for app/views/planets/create.html.erb
    redirect_to planet_path(@planet)
  end

  def edit
    authorize @planet
  end

  def update
    authorize @planet
    @planet.update(planet_params)
    # No need for app/views/planets/update.html.erb
    redirect_to planet_path(@planet)
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
    params.require(:planet).permit(:name, :description, :location)
  end
end
