class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :grade_id
      t.string :student_id
      t.integer :active

      t.timestamps
    end
  end
end
