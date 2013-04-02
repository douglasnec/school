class AddCourseIdOnDisciplines < ActiveRecord::Migration
  def up
    add_column :disciplines, :course_id, :integer
  end

  def down
  end
end
