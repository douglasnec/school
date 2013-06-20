class AddStudentIdToResponsible < ActiveRecord::Migration
  
  
  def change
    add_column :responsibles, :student_id, :integer
  end
end
