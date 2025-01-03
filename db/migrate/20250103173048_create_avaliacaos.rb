class CreateAvaliacaos < ActiveRecord::Migration[7.2]
  def change
    create_table :avaliacaos do |t|
      t.references :produto, null: false, foreign_key: true
      t.integer :nota
      t.text :comentario

      t.timestamps
    end
  end
end
