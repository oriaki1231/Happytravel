class GuamsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @guam = Guam.includes(:user)
    @guams = Guam.new
  end

  def create
    @guam = Guam.new(guam_params)
    if @guam.save
      respond_to do |format|
        format.json
      end
    else
      @guams = Guam.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def guam_params
    params.require(:guam).permit(:content, :image).merge(user_id: current_user.id)
  end
end
