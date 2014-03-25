class DocumentoAnexosController < ApplicationController
  # GET /documento_anexos
  # GET /documento_anexos.json
  def index
    @documento_anexos = DocumentoAnexo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documento_anexos }
    end
  end

  # GET /documento_anexos/1
  # GET /documento_anexos/1.json
  def show
    @documento_anexo = DocumentoAnexo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @documento_anexo }
    end
  end

  # GET /documento_anexos/new
  # GET /documento_anexos/new.json
  def new
    @documento_anexo = DocumentoAnexo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @documento_anexo }
    end
  end

  # GET /documento_anexos/1/edit
  def edit
    @documento_anexo = DocumentoAnexo.find(params[:id])
  end

  # POST /documento_anexos
  # POST /documento_anexos.json
  def create
    @documento_anexo = DocumentoAnexo.new(params[:documento_anexo])

    respond_to do |format|
      if @documento_anexo.save
        format.html { redirect_to @documento_anexo, notice: 'Documento anexo was successfully created.' }
        format.json { render json: @documento_anexo, status: :created, location: @documento_anexo }
      else
        format.html { render action: "new" }
        format.json { render json: @documento_anexo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /documento_anexos/1
  # PUT /documento_anexos/1.json
  def update
    @documento_anexo = DocumentoAnexo.find(params[:id])

    respond_to do |format|
      if @documento_anexo.update_attributes(params[:documento_anexo])
        format.html { redirect_to @documento_anexo, notice: 'Documento anexo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @documento_anexo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documento_anexos/1
  # DELETE /documento_anexos/1.json
  def destroy
    @documento_anexo = DocumentoAnexo.find(params[:id])
    @documento_anexo.destroy

    respond_to do |format|
      format.html { redirect_to documento_anexos_url }
      format.json { head :no_content }
    end
  end
end
