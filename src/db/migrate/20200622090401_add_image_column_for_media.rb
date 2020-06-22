class AddImageColumnForMedia < ActiveRecord::Migration[6.0]
  def change
    add_column :media, :image, :text
  end
end
