class CitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cities
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET states/1/cities
  def index
    @cities = @state.cities
  end

  # GET states/1/cities/1
  def show
  end

  # GET states/1/cities/new
  # def new
  #   @city = @state.cities.build
  # end

  # GET states/1/cities/1/edit
  def edit
  end

  # POST states/1/cities
  def create
    @city = @state.cities.create(city_params)
    redirect_to state_path(@state)
  end

  # PUT states/1/cities/1
  def update

    if @city.update_attributes(city_params)
      redirect_to(state_path(@state), notice: 'City was successfully updated.') 
    else
      render action: 'edit'
    end

    # if @city.update_attributes(city_params)
    #   redirect_to([@city.state, @city], notice: 'City was successfully updated.')
    # else
    #   render action: 'edit'
    # end
  end

  # DELETE states/1/cities/1
  def destroy
    @city.destroy

    redirect_to state_path(@state)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cities
      @state = State.find(params[:state_id])
    end

    def set_city
      @city = @state.cities.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def city_params
      params.require(:city).permit(:city_name)
    end
end
