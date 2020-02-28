class SoulsController < ApplicationController

  before_action :authenticate_user!
  
  def new
    @soul = Soul.includes(:user)
    @souls = Soul.new
  end

  def create
    @soul = Soul.new(soul_params)
    if @soul.save
      respond_to do |format|
        format.json
      end
    else
      @souls = Soul.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def soul_params
    params.require(:soul).permit(:content, :image).merge(user_id: current_user.id)
  end
  
end
