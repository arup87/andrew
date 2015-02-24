class RenameColumnDateToDateOfVisit < ActiveRecord::Migration
  def change
    change_table :appointments do |t|
    t.rename :date, :date_of_visit
    end
  end
end
