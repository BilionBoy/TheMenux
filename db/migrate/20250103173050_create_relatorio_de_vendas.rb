class CreateRelatorioDeVendas < ActiveRecord::Migration[7.2]
  def change
    create_table :relatorio_de_vendas do |t|
      t.references :estabelecimento, null: false, foreign_key: true
      t.date :data
      t.json :dados

      t.timestamps
    end
  end
end
