class PortOfLoading < ActiveRecord::Base


  before_save :uppercase_stuff

  private
    def uppercase_stuff
      self.city = self.city.upcase
      self.country = self.country.upcase
    end

end
