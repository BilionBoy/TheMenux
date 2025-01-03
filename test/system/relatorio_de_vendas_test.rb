require "application_system_test_case"

class RelatorioDeVendasTest < ApplicationSystemTestCase
  setup do
    @relatorio_de_venda = relatorio_de_vendas(:one)
  end

  test "visiting the index" do
    visit relatorio_de_vendas_url
    assert_selector "h1", text: "Relatorio de vendas"
  end

  test "should create relatorio de venda" do
    visit relatorio_de_vendas_url
    click_on "New relatorio de venda"

    fill_in "Dados", with: @relatorio_de_venda.dados
    fill_in "Data", with: @relatorio_de_venda.data
    fill_in "Estabelecimento", with: @relatorio_de_venda.estabelecimento_id
    click_on "Create Relatorio de venda"

    assert_text "Relatorio de venda was successfully created"
    click_on "Back"
  end

  test "should update Relatorio de venda" do
    visit relatorio_de_venda_url(@relatorio_de_venda)
    click_on "Edit this relatorio de venda", match: :first

    fill_in "Dados", with: @relatorio_de_venda.dados
    fill_in "Data", with: @relatorio_de_venda.data
    fill_in "Estabelecimento", with: @relatorio_de_venda.estabelecimento_id
    click_on "Update Relatorio de venda"

    assert_text "Relatorio de venda was successfully updated"
    click_on "Back"
  end

  test "should destroy Relatorio de venda" do
    visit relatorio_de_venda_url(@relatorio_de_venda)
    click_on "Destroy this relatorio de venda", match: :first

    assert_text "Relatorio de venda was successfully destroyed"
  end
end
