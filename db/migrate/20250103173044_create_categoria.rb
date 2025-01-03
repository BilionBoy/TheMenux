class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.references :estabelecimento, null: false, foreign_key: true
      t.string :nome

      t.timestamps
    end
  end
end
