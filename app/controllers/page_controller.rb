class PageController < ApplicationController
  def home
  end

  def about_us
    @name = params[:name]
    @email = params[:email ]
    @age = params[:age]
    @food = params[:food]
    
    if params[:commit] 
      flash.now[:error] = ' '
      if @name.nil? || @name.empty?
        flash.now[:error] << "Name cannot be blank. <br/>"
      end
      if @email.nil? || @email.empty?
        flash.now[:error] << "Email cannot be blank. <br/>"
      end
    end
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
