class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.integer :preco, null: false
      t.string :nome, null: false
      t.integer :quantidade, null: false

      t.timestamps
    end
  end
end
