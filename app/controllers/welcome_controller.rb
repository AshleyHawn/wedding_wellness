class WelcomeController < ApplicationController
  def index
    @brides = Bride.all
  end

  def show
    @brides = Bride.find(params[:brides])
  end

end
