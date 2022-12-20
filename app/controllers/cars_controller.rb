class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @cars = Car.where(sql_query, query: "%#{params[:query]}%")
    else
      @cars = Car.all
    end
  end
  def new
    @car = Car.new
  end
  def create
    @car = Car.new(params_car)
    # @car.user = current_user
    if @car.save
      redirect_to cars_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update
    if @car.update(params_car)
      redirect_to cars_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path, status: :see_other
  end


  private

  def params_car
    params.require(:car).permit(:brand, :model, :color, :price)
  end
  def set_car
    @car = Car.find(params[:id])
  end

end
