class Produto < ApplicationRecord
  belongs_to :categoria
  has_one_attached :imagem
end
