class AccountsController < ApplicationController

  def index
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
      @account.save
    redirect_to index: :action
  end

  def show
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
