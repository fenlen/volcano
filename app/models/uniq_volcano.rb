class UniqVolcano < ApplicationRecord
  include RailsAdminCharts
  has_many :eruption
  has_many :line_item

  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
