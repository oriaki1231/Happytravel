class BankokusController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @bankoku = Bankoku.includes(:user)
    @bankokus = Bankoku.new
  end

  def create
    Bankoku.create(bankoku_params)
    redirect_to new_bankoku_path
  end

  private
  def bankoku_params
    params.require(:bankoku).permit(:content, :image).merge(user_id: current_user.id)
  end
end
