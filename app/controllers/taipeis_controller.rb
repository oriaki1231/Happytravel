class TaipeisController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @taipei = Taipei.includes(:user)
    @taipeis = Taipei.new
  end

  def create
    Taipei.create(taipei_params)
    redirect_to new_taipei_path
  end

  private
  def taipei_params
    params.require(:taipei).permit(:content, :image).merge(user_id: current_user.id)
  end
end
