# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.2]
  def up
    create_table :orders do |t|
      t.references :establishment, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: { to_table: :users } # Referência correta para a tabela 'users'
      t.decimal :total_price, null: false, precision: 10, scale: 2
      t.string :status, null: false
      t.string :delivery_method, null: false
      t.string :delivery_address, null: false

      t.timestamps
    end
  end

  def down
    drop_table :orders
  end
end
