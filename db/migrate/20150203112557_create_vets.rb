class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name
      t.string :address
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :zip
      t.string :school
      t.integer :years_in_practice 
      
      t.timestamps
    end
  end
end
