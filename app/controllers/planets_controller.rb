class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update destroy]

  def index
    @planets = Planet.all
  end

  def show; end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.save
    # No need for app/views/planets/create.html.erb
    redirect_to planet_path(@planet)
  end

  def edit; end

  def update
    @planet.update(planet_params)
    # No need for app/views/planets/update.html.erb
    redirect_to planet_path(@planet)
  end

  def destroy
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
