class BankokusController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @bankoku = Bankoku.includes(:user)
    @bankokus = Bankoku.new
  end

  def create
    @bankoku = Bankoku.new(bankoku_params)
    if @bankoku.save
      respond_to do |format|
        format.json
      end
    else
      @bankokus = Bankoku.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  private
  def bankoku_params
    params.require(:bankoku).permit(:content, :image).merge(user_id: current_user.id)
  end
end
