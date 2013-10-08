class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :department, index: true
      t.string :yearlevel

      t.timestamps
    end
  end
end
