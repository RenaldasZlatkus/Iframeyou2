class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :settings, :user_id_id, :user_id

  	rename_column :websites, :user_id_id, :user_id
  end
end
