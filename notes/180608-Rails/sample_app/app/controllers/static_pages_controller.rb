class StaticPagesController < ApplicationController
  def home
    render "static_pages/home"
  end

  def help
    render "static_pages/help"
  end

  def about
  end

  def contact
  end
end
