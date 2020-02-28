class SebsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @seb = Seb.includes(:user)
    @sebs = Seb.new
  end

  def create
    @seb = Seb.new(seb_params)
    if @seb.save
      respond_to do |format|
        format.json
      end
    else
      @sebs = Seb.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def seb_params
    params.require(:seb).permit(:content, :image).merge(user_id: current_user.id)
  end
end
