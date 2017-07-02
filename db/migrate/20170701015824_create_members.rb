class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :department
      t.string :employee_code
      t.string :sizes, array: true
      t.integer :family_amount
      t.string :anniversaries, array: true
      t.boolean :shuttle_bus
      t.string :bus_line
      t.timestamps
    end
  end
end
