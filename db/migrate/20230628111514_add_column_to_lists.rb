class AddColumnToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :name, :string
  end
end
