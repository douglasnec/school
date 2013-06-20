class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers, :inherits => :person do |t|
      t.date :date_hire

      t.timestamps
    end
  end
end
