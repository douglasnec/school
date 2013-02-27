class RenameCourseToInterpriseOnStudent2 < ActiveRecord::Migration
  def up
    rename_column :students, :course_id, :interprise_id
  end

  def down
  end
end
