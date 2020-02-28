class PusansController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @pusan = Pusan.includes(:user)
    @pusans = Pusan.new
  end

  def create
    @pusan = Pusan.new(pusan_params)
    if @pusan.save
      respond_to do |format|
        format.json
      end
    else
      @pusans = Pusan.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def pusan_params
    params.require(:pusan).permit(:content, :image).merge(user_id: current_user.id)
  end
end
