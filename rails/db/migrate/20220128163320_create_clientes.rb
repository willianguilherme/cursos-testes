class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome, null:false
      t.integer :idade
      t.string :sexo, null:false

      t.timestamps
    end
  end
end
