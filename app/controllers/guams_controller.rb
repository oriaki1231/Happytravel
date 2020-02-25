class GuamsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @guam = Guam.includes(:user)
    @guams = Guam.new
  end

  def create
    Guam.create(guam_params)
    redirect_to new_guam_path
  end

  private
  def guam_params
    params.require(:guam).permit(:content, :image).merge(user_id: current_user.id)
  end
end
