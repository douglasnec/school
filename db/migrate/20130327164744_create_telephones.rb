class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :number
      t.integer :contact
      t.references :student
      t.references :teacher
      t.references :interprise

      t.timestamps
    end
  end
end
