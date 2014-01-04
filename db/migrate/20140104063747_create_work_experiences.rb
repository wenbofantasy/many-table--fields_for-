class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.date :start_date
      t.date :end_date
      t.string :company
      t.references :user

      t.timestamps
    end
    add_index :work_experiences, :user_id
  end
end
