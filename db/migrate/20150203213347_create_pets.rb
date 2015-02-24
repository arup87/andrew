class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.datetime :last_visit
      t.references :customer, index: true
      
      t.timestamps
    end
  end
end

