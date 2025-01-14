class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :nationality
      t.string :role
      t.date :birth_date
      t.references :department, foreign_key: true

      t.timestamps
    end
    add_index :employees, :name, unique: true
  end
end
