class Role < ActiveRecord::Base

  belongs_to :roleable, :polymorphic => true
  has_and_belongs_to_many :permissions

end
