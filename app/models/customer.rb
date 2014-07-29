class Customer < ActiveRecord::Base


  before_save :uppercase_stuff

  private
    def uppercase_stuff
      self.name = self.name.upcase
    end

end
