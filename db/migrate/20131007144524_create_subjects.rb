class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :desc
      t.integer :load

      t.timestamps
    end
  end
end
