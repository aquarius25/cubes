class AccountsController < ApplicationController

  def index
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
      @account.save
    redirect_to action: :index
  end

  def show
    @account = Account.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  def account_params
    params.require(:account).permit(:image, :f_name, :t_name, :profile, :link).merge(user_id: current_user.id)
  end
end
