class SebsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @seb = Seb.includes(:user)
    @sebs = Seb.new
  end

  def create
    Seb.create(seb_params)
    redirect_to new_seb_path
  end

  private
  def seb_params
    params.require(:seb).permit(:content, :image).merge(user_id: current_user.id)
  end
end
