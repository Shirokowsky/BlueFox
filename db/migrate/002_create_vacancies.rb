class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.datetime :expired
      t.integer :salary
      t.string :contact
      t.timestamps
    end
    add_index :vacancies, :title
  end
end

