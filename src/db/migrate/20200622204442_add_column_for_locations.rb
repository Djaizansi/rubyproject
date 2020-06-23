class AddColumnForLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :created_at, :datetime, null: false
    add_column :locations, :updated_at, :datetime
  end
end
