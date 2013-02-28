class AlterTypefieldToRegistration < ActiveRecord::Migration
  def up    
    change_column :registrations, :student_id, :integer    
  end

  def down
  end
end
