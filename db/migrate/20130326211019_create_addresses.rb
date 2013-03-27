class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :adjunct
      t.string :district
      t.integer :city_id
      t.references :student
      
      t.timestamps
    end
  end
end
