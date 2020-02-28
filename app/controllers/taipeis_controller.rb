class TaipeisController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @taipei = Taipei.includes(:user)
    @taipeis = Taipei.new
  end

  def create
    @taipei = Taipei.new(taipei_params)
    if @taipei.save
      respond_to do |format|
        format.json
      end
    else
      @taipeis = Taipei.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def taipei_params
    params.require(:taipei).permit(:content, :image).merge(user_id: current_user.id)
  end
end
