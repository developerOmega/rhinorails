class AddImageToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :image, :string
  end
end
