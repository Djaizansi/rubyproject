class AddForeignKeyToMedia < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :media, :users
  end
end
