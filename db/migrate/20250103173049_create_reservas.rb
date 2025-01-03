class CreateReservas < ActiveRecord::Migration[7.2]
  def change
    create_table :reservas do |t|
      t.references :estabelecimento, null: false, foreign_key: true
      t.string :nome_cliente
      t.string :telefone_cliente
      t.date :data
      t.time :hora
      t.integer :quantidade_pessoas
      t.string :status

      t.timestamps
    end
  end
end
