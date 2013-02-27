class CreateInterprises < ActiveRecord::Migration
  def change
    create_table :interprises do |t|
      t.string :name
      t.string :fantasy_name

      t.timestamps
    end
  end
end
