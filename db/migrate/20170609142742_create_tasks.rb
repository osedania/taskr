class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :location
      t.integer :minimum_budget
      t.integer :maximum_budget

      t.timestamps
    end
  end
end
