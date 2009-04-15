class User < ActiveRecord::Base

  has_and_belongs_to_many :groups
  has_many :roles, :as => :roleable

  validates_presence_of :nickname
  validates_confirmation_of :password, :if => :password_changed?

  def to_param
    nickname
  end

  # Ritorna tutti i ruoli utente
  # ereditando dai gruppi dell'utente
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
