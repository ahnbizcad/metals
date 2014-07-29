class Packing < ActiveRecord::Base

  validates :type, uniqueness: { case_sensitive: false }
end
