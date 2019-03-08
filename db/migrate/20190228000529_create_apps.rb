class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :estado
      t.integer :like

      t.timestamps
    end
  end
end
