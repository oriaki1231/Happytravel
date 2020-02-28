class BalisController < ApplicationController

  before_action :authenticate_user!
  
  def new
    @bali = Bali.includes(:user)
    @balis = Bali.new
  end

  def create
    @bali = Bali.new(bali_params)
    if @bali.save
      respond_to do |format|
        format.json
      end
    else
      @balis = Bali.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def bali_params
    params.require(:bali).permit(:content, :image).merge(user_id: current_user.id)
  end
end
