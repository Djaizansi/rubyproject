class RemoveColumnForLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :title
    remove_column :locations, :timestamp
  end
end
