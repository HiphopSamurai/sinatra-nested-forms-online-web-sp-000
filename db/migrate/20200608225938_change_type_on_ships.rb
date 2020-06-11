class ChangeTypeOnShips < ActiveRecord::Migration[6.0]
  def change
    rename_column :ships, :type, :category
  end
end
