class SalesReportsController < ApplicationController
  before_action :set_sales_report, only: %i[ show edit update destroy ]

  # GET /sales_reports or /sales_reports.json
  def index
    @sales_reports = SalesReport.all
  end

  # GET /sales_reports/1 or /sales_reports/1.json
  def show
  end

  # GET /sales_reports/new
  def new
    @sales_report = SalesReport.new
  end

  # GET /sales_reports/1/edit
  def edit
  end

  # POST /sales_reports or /sales_reports.json
  def create
    @sales_report = SalesReport.new(sales_report_params)

    respond_to do |format|
      if @sales_report.save
        format.html { redirect_to @sales_report, notice: "Sales report was successfully created." }
        format.json { render :show, status: :created, location: @sales_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sales_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_reports/1 or /sales_reports/1.json
  def update
    respond_to do |format|
      if @sales_report.update(sales_report_params)
        format.html { redirect_to @sales_report, notice: "Sales report was successfully updated." }
        format.json { render :show, status: :ok, location: @sales_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sales_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_reports/1 or /sales_reports/1.json
  def destroy
    @sales_report.destroy!

    respond_to do |format|
      format.html { redirect_to sales_reports_path, status: :see_other, notice: "Sales report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_report
      @sales_report = SalesReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sales_report_params
      params.require(:sales_report).permit(:establishment_id, :report_date, :data)
    end
end
