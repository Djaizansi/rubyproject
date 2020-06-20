class DeleteAddByColumnFromMedia < ActiveRecord::Migration[6.0]
  def change
    remove_column :media, :add_by
  end
end
