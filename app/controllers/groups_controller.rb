class GroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update]

  def index
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @user = current_user
    @group = @user.groups.new(group_params)
    if @user.save
      redirect_to root_path, notice: "create_group"
    else
      render :new
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, { :user_ids => [] })
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
