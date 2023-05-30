class PlanetsController < ApplicationController
  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.save
    # No need for app/views/planets/create.html.erb
    redirect_to planet_path(@planet)
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update(planet_params)
    # No need for app/views/planets/update.html.erb
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet = planet.find(params[:id])
    @planet.destroy
    # No need for app/views/planets/destroy.html.erb
    redirect_to planets_path, status: :see_other
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :location)
  end
end
