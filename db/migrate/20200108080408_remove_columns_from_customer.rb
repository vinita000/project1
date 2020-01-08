class RemoveColumnsFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :name, :string
    remove_column :customers, :mobile, :string
    remove_column :customers, :confirmation_token, :string
    remove_column :customers, :confirmed_at, :datetime
    remove_column :customers, :confirmation_sent_at, :datetime
  end
end
