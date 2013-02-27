class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :registration_number
      t.string :name
      t.integer :course_id

      t.timestamps
    end
  end
end
