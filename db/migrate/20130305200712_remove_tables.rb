class RemoveTables < ActiveRecord::Migration
  def up
    # drop_table :people
    drop_table :students
    drop_table :teachers
  end

  def down
  end
end
