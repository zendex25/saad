class CreateDayTimeslots < ActiveRecord::Migration
  def change
    create_table :day_timeslots do |t|
      t.references :day, index: true
      t.references :timeslot, index: true

      t.timestamps
    end
  end
end
