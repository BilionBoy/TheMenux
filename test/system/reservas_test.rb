require "application_system_test_case"

class ReservasTest < ApplicationSystemTestCase
  setup do
    @reserva = reservas(:one)
  end

  test "visiting the index" do
    visit reservas_url
    assert_selector "h1", text: "Reservas"
  end

  test "should create reserva" do
    visit reservas_url
    click_on "New reserva"

    fill_in "Data", with: @reserva.data
    fill_in "Estabelecimento", with: @reserva.estabelecimento_id
    fill_in "Hora", with: @reserva.hora
    fill_in "Nome cliente", with: @reserva.nome_cliente
    fill_in "Quantidade pessoas", with: @reserva.quantidade_pessoas
    fill_in "Status", with: @reserva.status
    fill_in "Telefone cliente", with: @reserva.telefone_cliente
    click_on "Create Reserva"

    assert_text "Reserva was successfully created"
    click_on "Back"
  end

  test "should update Reserva" do
    visit reserva_url(@reserva)
    click_on "Edit this reserva", match: :first

    fill_in "Data", with: @reserva.data
    fill_in "Estabelecimento", with: @reserva.estabelecimento_id
    fill_in "Hora", with: @reserva.hora.to_s
    fill_in "Nome cliente", with: @reserva.nome_cliente
    fill_in "Quantidade pessoas", with: @reserva.quantidade_pessoas
    fill_in "Status", with: @reserva.status
    fill_in "Telefone cliente", with: @reserva.telefone_cliente
    click_on "Update Reserva"

    assert_text "Reserva was successfully updated"
    click_on "Back"
  end

  test "should destroy Reserva" do
    visit reserva_url(@reserva)
    click_on "Destroy this reserva", match: :first

    assert_text "Reserva was successfully destroyed"
  end
end
