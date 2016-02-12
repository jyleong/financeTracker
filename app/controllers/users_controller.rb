class UsersController < ApplicationController
  def my_portfolio
    ## initiate instance variable
    
    @user_stocks = current_user.stocks
    @user = current_user
  end
  
  def my_friends
    @friendships = current_user.friends
  end
  
end