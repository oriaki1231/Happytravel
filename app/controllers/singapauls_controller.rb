class SingapaulsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @singapaul = Singapaul.includes(:user)
    @singapauls = Singapaul.new
  end

  def create
    Singapaul.create(singapaul_params)
    redirect_to new_singapaul_path
  end

  private
  def singapaul_params
    params.require(:singapaul).permit(:content, :image).merge(user_id: current_user.id)
  end
end
