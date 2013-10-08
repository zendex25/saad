class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :lastname
      t.string :firstname
      t.string :middleinitial
      t.string :status

      t.timestamps
    end
  end
end
