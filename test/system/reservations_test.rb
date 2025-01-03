require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "should create reservation" do
    visit reservations_url
    click_on "New reservation"

    fill_in "Customer name", with: @reservation.customer_name
    fill_in "Customer phone", with: @reservation.customer_phone
    fill_in "Date", with: @reservation.date
    fill_in "Establishment", with: @reservation.establishment_id
    fill_in "People count", with: @reservation.people_count
    fill_in "Status", with: @reservation.status
    fill_in "Time", with: @reservation.time
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "should update Reservation" do
    visit reservation_url(@reservation)
    click_on "Edit this reservation", match: :first

    fill_in "Customer name", with: @reservation.customer_name
    fill_in "Customer phone", with: @reservation.customer_phone
    fill_in "Date", with: @reservation.date
    fill_in "Establishment", with: @reservation.establishment_id
    fill_in "People count", with: @reservation.people_count
    fill_in "Status", with: @reservation.status
    fill_in "Time", with: @reservation.time.to_s
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation" do
    visit reservation_url(@reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "Reservation was successfully destroyed"
  end
end
