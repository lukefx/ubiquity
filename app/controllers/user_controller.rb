class UserController < ApplicationController
  
  wsdl_service_name 'User'

  def get_permissions(id)
    
    user = User.find(id)
    
    permissions = Array.new
    # prendo tutti i ruoli utente
    user.roles.each do |r|
      permissions << r.permissions
    end

    # prendo tutti i ruoli dei gruppi
    user.groups.each do |group|
      group.roles.each do |r|
        permissions << r.permissions
      end
    end

    # tolgo eventuali doppioni
    permissions.uniq
    names = []
    permissions.each do |p|
      names << p.name
    end
    
    return StringArray.new(:array => names)
    # return names
    
  end

  def get_roles(id)
    
    user = User.find(id)
    roles = Array.new
    user.roles.each do |r|
      roles << r.name
    end
    
    return StringArray.new(:array => roles)
    # return roles
     
  end
  
  def get_info(id)
    User.find(id)
  end

end
