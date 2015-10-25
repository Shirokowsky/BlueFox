class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :contact
      t.boolean :status
      t.integer :salary
      t.timestamps
    end
    add_index :employees, :name
  end
end
