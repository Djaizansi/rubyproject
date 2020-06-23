class AddColumnsForLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :until, :datetime
    add_column :locations, :user_id, :bigint
    add_column :locations, :medium_id, :bigint
    add_column :locations, :user_id_from, :bigint
  end
end
