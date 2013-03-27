class AddTypeOnAddress < ActiveRecord::Migration
  def up
    add_column :addresses, :type_address, :integer
  end

  def down
  end
end
