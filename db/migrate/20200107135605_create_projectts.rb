class CreateProjectts < ActiveRecord::Migration[5.2]
  def change
    create_table :projectts do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :cost_of_project
      t.integer :status
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
