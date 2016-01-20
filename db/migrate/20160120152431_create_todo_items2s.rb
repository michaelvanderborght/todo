class CreateTodoItems2s < ActiveRecord::Migration
  def change
    create_table :todo_items2s do |t|
      t.string :startDate
      t.string :endDate
      t.string :priority
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
