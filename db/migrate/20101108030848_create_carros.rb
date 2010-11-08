class CreateCarros < ActiveRecord::Migration
  def self.up
    create_table :carros do |t|
      t.string :marca
      t.string :modelo
      t.string :ano
      t.string :placa
      t.string :ano_aquisicao
      t.string :cor

      t.timestamps
    end
  end

  def self.down
    drop_table :carros
  end
end
