json.extract! produto, :id, :categoria_id, :nome, :descricao, :preco, :imagem, :promocao_ativa, :preco_promocional, :created_at, :updated_at
json.url produto_url(produto, format: :json)
json.imagem url_for(produto.imagem)
