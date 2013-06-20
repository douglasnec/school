class AddDisciplineReferenceOnTeacher < ActiveRecord::Migration
  def up
    add_column :teachers, "referece_discipline", :string
  end

  def down
  end
end
