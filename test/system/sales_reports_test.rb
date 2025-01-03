require "application_system_test_case"

class SalesReportsTest < ApplicationSystemTestCase
  setup do
    @sales_report = sales_reports(:one)
  end

  test "visiting the index" do
    visit sales_reports_url
    assert_selector "h1", text: "Sales reports"
  end

  test "should create sales report" do
    visit sales_reports_url
    click_on "New sales report"

    fill_in "Data", with: @sales_report.data
    fill_in "Establishment", with: @sales_report.establishment_id
    fill_in "Report date", with: @sales_report.report_date
    click_on "Create Sales report"

    assert_text "Sales report was successfully created"
    click_on "Back"
  end

  test "should update Sales report" do
    visit sales_report_url(@sales_report)
    click_on "Edit this sales report", match: :first

    fill_in "Data", with: @sales_report.data
    fill_in "Establishment", with: @sales_report.establishment_id
    fill_in "Report date", with: @sales_report.report_date
    click_on "Update Sales report"

    assert_text "Sales report was successfully updated"
    click_on "Back"
  end

  test "should destroy Sales report" do
    visit sales_report_url(@sales_report)
    click_on "Destroy this sales report", match: :first

    assert_text "Sales report was successfully destroyed"
  end
end
