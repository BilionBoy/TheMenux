class CreateProdutos < ActiveRecord::Migration[7.2]
  def change
    create_table :produtos do |t|
      t.references :categoria, null: false, foreign_key: true
      t.string :nome
      t.text :descricao
      t.decimal :preco
      t.boolean :promocao_ativa
      t.decimal :preco_promocional

      t.timestamps
    end
  end
end
