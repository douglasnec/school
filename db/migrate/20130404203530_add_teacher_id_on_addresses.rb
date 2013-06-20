class AddTeacherIdOnAddresses < ActiveRecord::Migration
  def up
    add_column :addresses, :teacher_id, :integer
  end

  def down
  end
end
