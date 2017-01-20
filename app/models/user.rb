class User < ActiveRecord::Base

  def add_star!
    self.no_stars += 1
  end
end
