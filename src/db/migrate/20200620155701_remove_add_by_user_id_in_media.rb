class RemoveAddByUserIdInMedia < ActiveRecord::Migration[6.0]
  def change
    remove_column :media, :add_by_user_id
  end
end
