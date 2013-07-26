class StaticPagesController < ApplicationController

  def home
    @new_tour = Tour.published.last
    @tours = Tour.published.take(4)
  end

  def about
  end

  def contacts
  end

  def for_agency
  end

  def for_clients
  end

end
