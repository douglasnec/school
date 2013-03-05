class CreateResponsibles < ActiveRecord::Migration
  def change
    create_table :responsibles, :inherits => :person do |t|
      t.integer :responsible_to, :null => false
    end
  end
end
