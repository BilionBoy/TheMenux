class RelatorioDeVendasController < ApplicationController
  before_action :set_relatorio_de_venda, only: %i[ show edit update destroy ]

  # GET /relatorio_de_vendas or /relatorio_de_vendas.json
  def index
    @relatorio_de_vendas = RelatorioDeVenda.all
  end

  # GET /relatorio_de_vendas/1 or /relatorio_de_vendas/1.json
  def show
  end

  # GET /relatorio_de_vendas/new
  def new
    @relatorio_de_venda = RelatorioDeVenda.new
  end

  # GET /relatorio_de_vendas/1/edit
  def edit
  end

  # POST /relatorio_de_vendas or /relatorio_de_vendas.json
  def create
    @relatorio_de_venda = RelatorioDeVenda.new(relatorio_de_venda_params)

    respond_to do |format|
      if @relatorio_de_venda.save
        format.html { redirect_to @relatorio_de_venda, notice: "Relatorio de venda was successfully created." }
        format.json { render :show, status: :created, location: @relatorio_de_venda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relatorio_de_venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_de_vendas/1 or /relatorio_de_vendas/1.json
  def update
    respond_to do |format|
      if @relatorio_de_venda.update(relatorio_de_venda_params)
        format.html { redirect_to @relatorio_de_venda, notice: "Relatorio de venda was successfully updated." }
        format.json { render :show, status: :ok, location: @relatorio_de_venda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relatorio_de_venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_de_vendas/1 or /relatorio_de_vendas/1.json
  def destroy
    @relatorio_de_venda.destroy!

    respond_to do |format|
      format.html { redirect_to relatorio_de_vendas_path, status: :see_other, notice: "Relatorio de venda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_de_venda
      @relatorio_de_venda = RelatorioDeVenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relatorio_de_venda_params
      params.require(:relatorio_de_venda).permit(:estabelecimento_id, :data, :dados)
    end
end
