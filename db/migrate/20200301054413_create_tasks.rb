class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :daytime, null: false, foreign_key: true
      t.integer :work_id, default: 0, null: false, limit: 1
      t.string :name, null: false
      t.string :adress
      t.text :remark
      t.timestamps
    end
  end
end
