class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.integer :capacity , null: false, default: 0
      t.integer :occupied_count, null: false, default: 0
      t.datetime :data, null: false
      t.string :local, null: false
      t.string :status, null: false, default: 'draft'

      t.timestamps
    end
  end
end
