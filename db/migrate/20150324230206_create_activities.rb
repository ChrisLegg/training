class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :date
      t.string :type
      t.decimal :distance, precision: 6, scale: ;
      t.time :duration

      t.timestamps null: false
    end
  end
end
