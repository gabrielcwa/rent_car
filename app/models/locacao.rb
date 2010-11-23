class Locacao < ActiveRecord::Base
  belongs_to :carro
  belongs_to :cliente
end
