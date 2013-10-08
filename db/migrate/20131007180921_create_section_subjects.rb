class CreateSectionSubjects < ActiveRecord::Migration
  def change
    create_table :section_subjects do |t|
      t.references :section, index: true
      t.references :subject, index: true

      t.timestamps
    end
  end
end
