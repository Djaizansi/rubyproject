class DeleteAddTimeColumnFromMedia < ActiveRecord::Migration[6.0]
  def change
    remove_column :media, :add_time
  end
end
