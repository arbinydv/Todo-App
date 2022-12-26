class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :todolists, :Status, :Active
  end
end
