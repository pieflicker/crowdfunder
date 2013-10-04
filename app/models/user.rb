class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :first_name, :last_name, :email, :password

  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :projects
  has_many :pledges
end





# this bit was there before sorcery wanted to overwrite it
# class User < ActiveRecord::Base
#   authenticates_with_sorcery!
#   attr_accessible :first_name, :last_name, :email, :password
#   has_many :projects
# end