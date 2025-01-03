require "test_helper"

class RelatorioDeVendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_de_venda = relatorio_de_vendas(:one)
  end

  test "should get index" do
    get relatorio_de_vendas_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_de_venda_url
    assert_response :success
  end

  test "should create relatorio_de_venda" do
    assert_difference("RelatorioDeVenda.count") do
      post relatorio_de_vendas_url, params: { relatorio_de_venda: { dados: @relatorio_de_venda.dados, data: @relatorio_de_venda.data, estabelecimento_id: @relatorio_de_venda.estabelecimento_id } }
    end

    assert_redirected_to relatorio_de_venda_url(RelatorioDeVenda.last)
  end

  test "should show relatorio_de_venda" do
    get relatorio_de_venda_url(@relatorio_de_venda)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_de_venda_url(@relatorio_de_venda)
    assert_response :success
  end

  test "should update relatorio_de_venda" do
    patch relatorio_de_venda_url(@relatorio_de_venda), params: { relatorio_de_venda: { dados: @relatorio_de_venda.dados, data: @relatorio_de_venda.data, estabelecimento_id: @relatorio_de_venda.estabelecimento_id } }
    assert_redirected_to relatorio_de_venda_url(@relatorio_de_venda)
  end

  test "should destroy relatorio_de_venda" do
    assert_difference("RelatorioDeVenda.count", -1) do
      delete relatorio_de_venda_url(@relatorio_de_venda)
    end

    assert_redirected_to relatorio_de_vendas_url
  end
end
