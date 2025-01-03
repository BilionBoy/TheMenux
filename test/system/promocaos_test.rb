require "application_system_test_case"

class PromocaosTest < ApplicationSystemTestCase
  setup do
    @promocao = promocaos(:one)
  end

  test "visiting the index" do
    visit promocaos_url
    assert_selector "h1", text: "Promocaos"
  end

  test "should create promocao" do
    visit promocaos_url
    click_on "New promocao"

    check "Ativo" if @promocao.ativo
    fill_in "Data fim", with: @promocao.data_fim
    fill_in "Data inicio", with: @promocao.data_inicio
    fill_in "Descricao", with: @promocao.descricao
    fill_in "Estabelecimento", with: @promocao.estabelecimento_id
    fill_in "Titulo", with: @promocao.titulo
    click_on "Create Promocao"

    assert_text "Promocao was successfully created"
    click_on "Back"
  end

  test "should update Promocao" do
    visit promocao_url(@promocao)
    click_on "Edit this promocao", match: :first

    check "Ativo" if @promocao.ativo
    fill_in "Data fim", with: @promocao.data_fim.to_s
    fill_in "Data inicio", with: @promocao.data_inicio.to_s
    fill_in "Descricao", with: @promocao.descricao
    fill_in "Estabelecimento", with: @promocao.estabelecimento_id
    fill_in "Titulo", with: @promocao.titulo
    click_on "Update Promocao"

    assert_text "Promocao was successfully updated"
    click_on "Back"
  end

  test "should destroy Promocao" do
    visit promocao_url(@promocao)
    click_on "Destroy this promocao", match: :first

    assert_text "Promocao was successfully destroyed"
  end
end
