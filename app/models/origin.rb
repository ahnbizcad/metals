class Origin < ActiveRecord::Base

  
  before_save :uppercase_stuff

  private
    def uppercase_stuff
      self.location = self.location.upcase
    end

end
