class AlterAddressType < ActiveRecord::Migration
  def up
    change_column :addresses, :type_address, :string
  end

  def down
    change_column :addresses, :type_address, :integer
  end
end
