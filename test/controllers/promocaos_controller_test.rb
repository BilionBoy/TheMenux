require "test_helper"

class PromocaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promocao = promocaos(:one)
  end

  test "should get index" do
    get promocaos_url
    assert_response :success
  end

  test "should get new" do
    get new_promocao_url
    assert_response :success
  end

  test "should create promocao" do
    assert_difference("Promocao.count") do
      post promocaos_url, params: { promocao: { ativo: @promocao.ativo, data_fim: @promocao.data_fim, data_inicio: @promocao.data_inicio, descricao: @promocao.descricao, estabelecimento_id: @promocao.estabelecimento_id, titulo: @promocao.titulo } }
    end

    assert_redirected_to promocao_url(Promocao.last)
  end

  test "should show promocao" do
    get promocao_url(@promocao)
    assert_response :success
  end

  test "should get edit" do
    get edit_promocao_url(@promocao)
    assert_response :success
  end

  test "should update promocao" do
    patch promocao_url(@promocao), params: { promocao: { ativo: @promocao.ativo, data_fim: @promocao.data_fim, data_inicio: @promocao.data_inicio, descricao: @promocao.descricao, estabelecimento_id: @promocao.estabelecimento_id, titulo: @promocao.titulo } }
    assert_redirected_to promocao_url(@promocao)
  end

  test "should destroy promocao" do
    assert_difference("Promocao.count", -1) do
      delete promocao_url(@promocao)
    end

    assert_redirected_to promocaos_url
  end
end
