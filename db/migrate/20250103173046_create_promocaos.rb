class CreatePromocaos < ActiveRecord::Migration[7.2]
  def change
    create_table :promocaos do |t|
      t.references :estabelecimento, null: false, foreign_key: true
      t.string :titulo
      t.text :descricao
      t.datetime :data_inicio
      t.datetime :data_fim
      t.boolean :ativo

      t.timestamps
    end
  end
end
