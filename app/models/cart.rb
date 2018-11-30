class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    include RailsAdminCharts
    def add_volcano(volcano)
        current_item = line_items.find_by(uniq_volcano_id: volcano.id)
        if current_item
            return nil
        else
            current_item = line_items.build(uniq_volcano_id: volcano.id)
            return current_item
        end
    end
end
