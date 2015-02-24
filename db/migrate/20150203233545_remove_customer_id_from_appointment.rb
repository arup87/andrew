class RemoveCustomerIdFromAppointment < ActiveRecord::Migration
  def change
    remove_column :appointments, :customer_id
  end
end
