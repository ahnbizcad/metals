class Purchase < ActiveRecord::Base


  before_save :uppercase_stuff

  private
    def uppercase_stuff
      self.po = self.po.upcase
    end

end
