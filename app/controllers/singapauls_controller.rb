class SingapaulsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @singapaul = Singapaul.includes(:user)
    @singapauls = Singapaul.new
  end

  def create
    @singapaul = Singapaul.new(singapaul_params)
    if @singapaul.save
      respond_to do |format|
        format.json
      end
    else
      @singapauls = Singapaul.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def singapaul_params
    params.require(:singapaul).permit(:content, :image).merge(user_id: current_user.id)
  end
end
