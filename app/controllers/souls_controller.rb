class SoulsController < ApplicationController

  def new
    @soul = Soul.includes(:user)
    @souls = Soul.new
  end

  def create
    Soul.create(soul_params)
    redirect_to root_path
  end

  private
  def soul_params
    params.require(:soul).permit(:content, :image)
  end
  
end
