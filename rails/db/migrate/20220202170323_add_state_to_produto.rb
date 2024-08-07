class AddStateToProduto < ActiveRecord::Migration[5.2]
  def change
    add_column :produtos, :state, :string, null: false, index: true
  end
end
