class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :day_timeslot, index: true
      t.references :section_subject, index: true

      t.timestamps
    end
  end
end
