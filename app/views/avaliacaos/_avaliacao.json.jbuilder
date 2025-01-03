json.extract! avaliacao, :id, :produto_id, :nota, :comentario, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)
