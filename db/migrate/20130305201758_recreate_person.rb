class RecreatePerson < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string "name"
      t.datetime "birth"
      t.timestamps
    end
  end

  def down
  end
end
