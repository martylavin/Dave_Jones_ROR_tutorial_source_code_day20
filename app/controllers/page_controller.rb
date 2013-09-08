class PageController < ApplicationController
  def home
  end

  def about_us
    @name = params[:name]
    @email = params[:Email ]
    @age = params[:Age]
  end

  def recipes
  end

  def product
  end

  def articles
  end

  def calendar
    @year = params[:year]
    @month = params[:month]
    @name = 'Marty Lavin'
    @My_time = Time.now
    @products = %w(skis boots mittens poles coats pants gloves)
  end

  def blog
  end

  def login
  end
end
