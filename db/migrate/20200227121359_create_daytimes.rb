class CreateDaytimes < ActiveRecord::Migration[5.2]
  def change
    create_table :daytimes do |t|
      t.integer :month_id, default: 0, null: false, limit: 1
      t.integer :day_id, default: 0, null: false, limit: 1
      t.integer :hour_id, default: 0, null: false, limit: 1
      t.integer :minute_id, default: 0, null: false, limit: 1
      t.timestamps
    end
  end
end
