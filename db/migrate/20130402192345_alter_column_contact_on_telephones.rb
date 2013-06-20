class AlterColumnContactOnTelephones < ActiveRecord::Migration
  def up
    change_column :telephones, :contact, :string
  end

  def down
  end
end
