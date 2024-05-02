class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
