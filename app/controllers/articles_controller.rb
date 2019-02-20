class ArticlesController < ApplicationController
  before_action :login_or_not
  def index
  end

  private
  def login_or_not
    redirect_to new_user_session_path unless user_signed_in?
  end
end
