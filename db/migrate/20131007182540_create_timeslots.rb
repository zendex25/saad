class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.time :start
      t.time :finish

      t.timestamps
    end
  end
end
