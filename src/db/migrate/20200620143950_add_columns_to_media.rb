class AddColumnsToMedia < ActiveRecord::Migration[6.0]
  def change
    add_column :media, :duration, :time
    add_column :media, :quality, :string
  end
end
