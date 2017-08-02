class SessionsController < ApplicationController
  def new
  end

  def create
   @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
	  else
		  flash[:error]= 'Incorecct username or password'
		  render :new	
	  end 
	end

  def destroy
  	session.delete(:user_id)
  	redirect_to new_session_path
  end
end
