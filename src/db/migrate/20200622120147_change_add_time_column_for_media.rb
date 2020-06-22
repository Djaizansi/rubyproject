class ChangeAddTimeColumnForMedia < ActiveRecord::Migration[6.0]
  def change
    change_column :media, :duration, :string
  end
end
