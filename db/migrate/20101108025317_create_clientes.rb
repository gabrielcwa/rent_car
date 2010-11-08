class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nome
      t.string :nome_pai
      t.string :nome_mae
      t.string :data_nascimento
      t.string :telefone
      t.string :cpf
      t.string :habilitacao
      t.string :naturalidade
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :municipio
      t.string :cep
      t.string :estado

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
