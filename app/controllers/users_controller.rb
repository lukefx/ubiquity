class UsersController < ApplicationController
    
  def index
    @users = User.all
  end
  
  def show
    
    if params[:id] =~ /^\d+$/
      @user = User.find(params[:id])
    else
      @user = User.find_by_nickname(params[:id])
    end
    
    respond_to do |format|
      format.html
      format.xml  { render :xml => @user }
    end  
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created user."
      redirect_to @user
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to @user
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Successfully destroyed user."
    redirect_to users_url
  end
  
end
