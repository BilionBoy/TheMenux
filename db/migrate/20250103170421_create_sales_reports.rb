class CreateSalesReports < ActiveRecord::Migration[7.2]
  def change
    create_table :sales_reports do |t|
      t.references :establishment, null: false, foreign_key: true
      t.date :report_date
      t.json :data

      t.timestamps
    end
  end
end
