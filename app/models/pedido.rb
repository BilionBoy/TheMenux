class Pedido < ApplicationRecord
  belongs_to :estabelecimento
  belongs_to :cliente
end
