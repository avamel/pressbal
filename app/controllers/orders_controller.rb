class OrdersController < ApplicationController
  def new
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
    @tour = Tour.find params[:tour_id]
    @order = @tour.orders.build
  end

  def create
    @tour = Tour.find params[:tour_id]
    @order = @tour.orders.build order_params

    respond_to do |format|
      if @order.save
        format.html { redirect_to tour_url(@order.tour), notice: 'Тур заказан. С вами свяжутся в ближайшее время' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def order_params
    params.require(:order).permit(:title, :email, :phone, :notation, :tour_id)
  end
end
