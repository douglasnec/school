class AddTeacherIdOnDisciplines < ActiveRecord::Migration
  def up
    add_column :disciplines, :teacher_id, :integer    
  end

  def down
  end
end
