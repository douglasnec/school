class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students, :inherits => :person do |t|
      t.string :register_number, :null => false
    end
  end
end
