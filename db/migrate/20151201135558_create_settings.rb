class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :frames
      t.string :skin
      t.string :stye
      t.string :background
      t.references :user_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
