class AddColumnToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :name, :string
    add_column :customers, :mobile, :string
  end
end
