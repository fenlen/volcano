class Eruption < ApplicationRecord
  belongs_to :uniq_volcano, optional: true
end
