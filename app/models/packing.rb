class Packing < ActiveRecord::Base

  validates :packing_type, uniqueness: { case_sensitive: false }
end
