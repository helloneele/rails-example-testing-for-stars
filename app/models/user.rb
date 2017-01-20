class User < ActiveRecord::Base
  validates :last_name, presence: true

  def add_star!
    self.no_stars += 1
  end
end
