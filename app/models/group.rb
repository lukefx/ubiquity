class Group < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_many :groups
  has_many :roles, :as => :roleable

  def to_param
    name
  end

  # Ritorna tutti i ruoli del gruppo
  # ereditando dai sottogruppi del gruppo
  def all_roles
    
    r = Array.new
    self.groups.each { |g|
      r.concat(g.roles)
    }
    r.concat(self.roles)
    
    r.sort! { |role1, role2| 
      role1.name <=> role2.name
    }
    
    return r
  end

end
