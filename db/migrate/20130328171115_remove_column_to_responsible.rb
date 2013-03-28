class RemoveColumnToResponsible < ActiveRecord::Migration
  def up
    remove_column :responsibles, :responsible_to
  end

  def down
  end
end
