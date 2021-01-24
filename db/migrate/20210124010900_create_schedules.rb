class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :date
      t.string :event

      t.timestamps
    end
  end
end
