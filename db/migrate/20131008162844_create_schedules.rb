class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :day, index: true
      t.references :timeslot, index: true
      t.references :section, index: true
      t.references :subject, index: true
      t.references :professor, index: true
      t.references :room, index: true

      t.timestamps
    end
  end
end
