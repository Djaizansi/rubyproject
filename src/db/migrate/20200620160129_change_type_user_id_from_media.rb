class ChangeTypeUserIdFromMedia < ActiveRecord::Migration[6.0]
  def change
    change_column :media, :user_id, :bigint
  end
end
