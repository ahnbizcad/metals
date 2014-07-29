class Container < ActiveRecord::Base


  before_save :uppercase_stuff

  private
    def uppercase_stuff
      self.container_number = self.container_number.upcase
    end

end
