class VisasController < ApplicationController
  def index
    @title = 'Визы'
    @tour_types = TypeOfTour.all
    @visas = Visa.all.page(params[:page]).per(30)
  end

  def show
    @tour_types = TypeOfTour.all
    @visa = Visa.find params[:id]
    @title = @visa.title
  end
end
