class CreateEstabelecimentos < ActiveRecord::Migration[7.2]
  def change
    create_table :estabelecimentos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :nome
      t.string :tipo
      t.json :tema
      t.json :redes_sociais

      t.timestamps
    end
  end
end
