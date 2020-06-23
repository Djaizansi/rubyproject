class CreateLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :timestamp
    end
  end
end
