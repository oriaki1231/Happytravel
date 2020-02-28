class HawaisController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @hawai = Hawai.includes(:user)
    @hawais = Hawai.new
  end

  def create
    @hawai = Hawai.new(hawai_params)
    if @hawai.save
      respond_to do |format|
        format.json
      end
    else
      @hawais = Hawai.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def hawai_params
    params.require(:hawai).permit(:content, :image).merge(user_id: current_user.id)
  end
end
