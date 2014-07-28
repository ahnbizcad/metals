class Packing < ActiveRecord::Base
  has_many :purchases
  has_many :sales
  has_many :shipments
  has_many :claims

  validates :type, uniqueness: { case_sensitive: false }
end
