class CreateTodolists < ActiveRecord::Migration[7.0]
  def change
    create_table :todolists do |t|
      t.string :Tasks
      t.string :Priority
      t.integer :Urgency
      t.boolean :Status
      t.string :Category

      t.timestamps
    end
  end
end
