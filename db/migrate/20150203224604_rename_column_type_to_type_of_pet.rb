class RenameColumnTypeToTypeOfPet < ActiveRecord::Migration
  def change
    change_table :pets do |t|
     t.rename :type, :type_of_pet
    end
  end
end
