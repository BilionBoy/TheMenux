class CreatePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :pedidos do |t|
      t.references :estabelecimento, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: { to_table: :users }
      t.decimal :total_preco
      t.string :status
      t.string :metodo_entrega
      t.string :endereco_entrega

      t.timestamps
    end
  end
end
