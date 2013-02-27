class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :discipline_id
      t.integer :course_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
