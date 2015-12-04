class AddWebsitesToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :website1, :string
    add_column :settings, :website2, :string
    add_column :settings, :website3, :string
    add_column :settings, :website4, :string
  end
end
