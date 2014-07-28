class PortOfDischarge < ActiveRecord::Base
  has_many :purchases
  has_many :sales
  has_many :shipments
  has_many :claims
end
