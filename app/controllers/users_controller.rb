class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
  end

  def create

  end

  def edit
  end
end
