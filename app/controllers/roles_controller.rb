class RolesController < ApplicationController

  def index
  
    @roleable = find_parent
    @roles = @roleable.try(:all_roles) | @roleable.roles
    
    respond_to do |format|
      format.html
      format.xml  { render :xml => @roles }
    end
  end

  def destroy
    
    @role = Role.find(params[:role_id])
    @role.destroy
    flash[:notice] = "Successfully destroyed role."
    redirect_to [@roleable, :roles]
  end

  private
  
  def find_parent
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

end
