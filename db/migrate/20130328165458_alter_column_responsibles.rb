class AlterColumnResponsibles < ActiveRecord::Migration
  def up
    change_column :responsibles, :responsible_to, :integer, :null => true
  end

  def down
  end
end
