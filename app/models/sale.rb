class Sale < ActiveRecord::Base
  #belongs_to :supplier
  belongs_to :customer
  belongs_to :consignee
  belongs_to :payment_term
  #belongs_to :container
  belongs_to :item #multiple items?
  belongs_to :packing
  belongs_to :port_of_loading
  belongs_to :port_of_discharge
end
