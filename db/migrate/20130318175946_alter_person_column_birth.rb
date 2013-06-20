class AlterPersonColumnBirth < ActiveRecord::Migration
  def up
    change_column :people, :birth, :date
  end

  def down
    change_column  :people, :birth, :datetime
  end
end
