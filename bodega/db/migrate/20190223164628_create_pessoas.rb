class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :nascimento
      t.string :cpf

      t.timestamps
    end
  end
end