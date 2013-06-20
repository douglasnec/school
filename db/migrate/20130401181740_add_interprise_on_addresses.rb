class AddInterpriseOnAddresses < ActiveRecord::Migration
  def up
    add_column :addresses, "interprise_id", :integer, :false => true 
  end

  def down
  end
end
