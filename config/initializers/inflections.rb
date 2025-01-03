# config/initializers/inflections.rb
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.plural "Estabelecimento", "Estabelecimentos"
  inflect.singular "Estabelecimento", "Estabelecimento"

  inflect.plural "Categoria", "Categorias"
  inflect.singular "Categoria", "Categoria"

  inflect.plural "Produto", "Produtos"
  inflect.singular "Produto", "Produto"

  inflect.plural "Promocao", "Promocoes"
  inflect.singular "Promocao", "Promocao"

  inflect.plural "Pedido", "Pedidos"
  inflect.singular "Pedido", "Pedido"

  inflect.plural "Avaliacao", "Avaliacoes"
  inflect.singular "Avaliacao", "Avaliacao"

  inflect.plural "Reserva", "Reservas"
  inflect.singular "Reserva", "Reserva"

  inflect.plural "RelatorioDeVendas", "RelatoriosDeVendas"
  inflect.singular "RelatorioDeVendas", "RelatorioDeVendas"
end
