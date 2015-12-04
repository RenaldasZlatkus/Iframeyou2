class ChangeColumnNameStyle < ActiveRecord::Migration
  def change
  	rename_column :settings, :stye, :style
  end
end
