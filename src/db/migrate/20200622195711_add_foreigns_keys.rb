class AddForeignsKeys < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :locations, :users
    add_foreign_key :locations, :media
  end
end
