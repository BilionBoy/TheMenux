json.extract! promocao, :id, :estabelecimento_id, :titulo, :descricao, :data_inicio, :data_fim, :ativo, :created_at, :updated_at
json.url promocao_url(promocao, format: :json)
