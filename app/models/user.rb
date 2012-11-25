class User < ActiveRecord::Base
  validates :first_name, :last_name, :presence => true
  attr_accessible :first_name, :last_name, :middle_initial, :no_stars
end
