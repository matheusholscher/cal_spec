class CreateLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.integer :ano
      t.text :sinopse
      t.integer :edicao
      t.string :isbn

      t.timestamps
    end
  end
end
