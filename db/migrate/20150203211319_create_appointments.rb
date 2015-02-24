class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :reason_for_visit
      t.references :pet, index: true
      t.references :customer, index: true
      t.references :vet, index: true
      t.boolean :reminder

      t.timestamps
    end
  end
end
