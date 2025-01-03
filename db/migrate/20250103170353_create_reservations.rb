class CreateReservations < ActiveRecord::Migration[7.2]
  def change
    create_table :reservations do |t|
      t.references :establishment, null: false, foreign_key: true
      t.string :customer_name
      t.string :customer_phone
      t.date :date
      t.time :time
      t.integer :people_count
      t.string :status

      t.timestamps
    end
  end
end
