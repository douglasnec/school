class AddRotationToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :rotation_id, :integer
  end
end
