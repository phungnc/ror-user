class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
  end
  #this is comment in feature/test_other_feature branch
end
