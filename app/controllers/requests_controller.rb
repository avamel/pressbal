class RequestsController < ApplicationController
  def new
    @title = "Заявка на тура"
    @news = News.published.take(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.get_random.take(3)
    @request = Request.new
  end

  def create
    @title = "Заявка на тура"
    @news = News.published.take(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.get_random.take(3)
    @request = Request.new request_params

    respond_to do |format|
      if @request.save
        format.html { redirect_to root_path, notice: 'Ваша заявка принята. С вами свяжутся в ближайшее время' }
        format.json { render json: @request, status: :created, location: @request }
      else
        format.html { render action: "new" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def request_params
    params.require(:request).permit(:name, :email, :phone, :notation)
  end
end
