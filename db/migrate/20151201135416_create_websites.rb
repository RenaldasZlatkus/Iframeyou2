class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :url
      t.references :user_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
