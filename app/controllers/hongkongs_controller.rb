class HongkongsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @hongkong = Hongkong.includes(:user)
    @hongkongs = Hongkong.new
  end

  def create
    @hongkong = Hongkong.new(hongkong_params)
    if @hongkong.save
      respond_to do |format|
        format.json
      end
    else
      @hongkongs = Hongkong.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def hongkong_params
    params.require(:hongkong).permit(:content, :image).merge(user_id: current_user.id)
  end
end
