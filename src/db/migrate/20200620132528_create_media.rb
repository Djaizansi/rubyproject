class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :title
      t.text :content
      t.integer :add_by
      t.datetime :add_time
      t.timestamps
    end
  end
end
