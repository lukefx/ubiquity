class GroupsController < ApplicationController

  def index
    
    if params[:user_id].nil?
      @groups = Group.all
    else
      @groups = User.find(params[:user_id]).groups
    end    

    respond_to do |format|
      format.html
      format.xml { render :xml => @groups }
    end
    
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:notice] = "Successfully created group."
      redirect_to @group
    else
      render :action => 'new'
    end
  end

  def show
    @group = Group.find(params[:id])
    
    respond_to do |format|
      format.html
      format.xml  { render :xml => @group }
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    respond_to do |format|
      format.html { redirect_to group_path }
      format.js
  end
    
  end


end
