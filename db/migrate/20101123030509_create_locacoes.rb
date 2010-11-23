class CreateLocacoes < ActiveRecord::Migration
  def self.up
    create_table :locacoes do |l|
      l.references :carro
      l.references :cliente
      l.string :data_locacao
      l.string :data_entrega
      l.string :valor
      
      l.timestamps
    end
  end

  def self.down
    drop_table :locacoes
  end
end
