class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string name,
      t.datetime birth,
      t.timestamps
    end
  end
end
