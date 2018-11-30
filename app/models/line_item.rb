class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :uniq_volcano, optional: true
  belongs_to :cart
end
