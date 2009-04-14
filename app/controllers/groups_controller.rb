class GroupsController < ApplicationController

  def index
    
    if params[:user_id].nil?
      @groups = Group.find(:all)
    else
      @groups = User.find(params[:user_id]).groups
    end    

    respond_to do |format|
      format.html
      format.xml  { render :xml => @groups }
    end
    
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


end
