class Packing < ActiveRecord::Base

  validates :packing_type, uniqueness: { case_sensitive: false }

  before_save :uppercase_stuff

  private
    def uppercase_stuff
      self.packing_type = self.packing_type.upcase
    end


end
