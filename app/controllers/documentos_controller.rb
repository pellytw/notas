class DocumentosController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource 
  # GET /documentos
  # GET /documentos.json
  def index
    @documentos = Documento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documentos }
    end
  end

  # GET /documentos/1
  # GET /documentos/1.json
  def show
    @documento = Documento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @documento }
    end
  end

  # GET /documentos/new
  # GET /documentos/new.json
  def new
    @documento = Documento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @documento }
    end
  end

  # GET /documentos/1/edit
  def edit
    @documento = Documento.find(params[:id])
    @documento.documento_anexo
  end

  # POST /documentos
  # POST /documentos.json
  def create
    @documento = Documento.new(params[:documento])

    respond_to do |format|
      if @documento.save
        format.html { redirect_to documentos_url, notice: 'Documento creado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /documentos/1
  # PUT /documentos/1.json
  def update
    @documento = Documento.find(params[:id])
    @descripcion = ""
    if @documento.fecha_recepcion.to_s != params[:documento][:fecha_recepcion] then
      @descripcion << "fecha de recepcion - "
    end
    if @documento.fecha_documento.to_s != params[:documento][:fecha_documento] then
      @descripcion << "fecha de documento - "
    end
    if @documento.nombres_y_apellidos != params[:documento][:nombres_y_apellidos] then
      @descripcion << "nombres y apellidos - "
    end
    if @documento.anio.to_s != params[:documento][:anio] then
      @descripcion << "anio - "
    end
    if @documento.asunto != params[:documento][:asunto] then
      @descripcion << "asunto - "
    end
    if (@documento.autorizado == false) && (params[:documento][:autorizado] == "1") then
      @descripcion << "autorizado - "
    elsif (@documento.autorizado == true) && (params[:documento][:autorizado] == "0") then
      @descripcion << "autorizado - "
    end
    if @documento.destinatario != params[:documento][:destinatario] then
      @descripcion << "destinatario - "
    end    
    if @documento.iniciado_por != params[:documento][:iniciado_por] then
      @descripcion << "iniciado por- "
    end
    if @documento.localidad then   
      if @documento.localidad.id.to_s != params[:documento][:localidad_id] then
       @descripcion << "localidad - "
      end
    end 
    if @documento.motivo != params[:documento][:motivo] then
      @descripcion << "motivo - "
    end      
    if @documento.nro_documento != params[:documento][:nro_documento] then
      @descripcion << "nro documento - "
    end     
    if @documento.nro_salida != params[:documento][:nro_salida] then
      @descripcion << "nro salida - "
    end     
    if @documento.observacion != params[:documento][:observacion] then
      @descripcion << "observacion - "
    end     
    if @documento.procedencia != params[:documento][:procedencia] then
      @descripcion << "procedencia - "
    end     
    if @documento.se_encuentra_en != params[:documento][:se_encuentra_en] then
      @descripcion << "se encuenta en  - "
    end
    if @documento.sigla != params[:documento][:sigla] then
      @descripcion << "sigla - "
    end
    if @documento.tipo_documento_id then
      if @documento.tipo_documento.id.to_s != params[:documento][:tipo_documento_id] then
        @descripcion << "tipo documento - "
      end
    end


    respond_to do |format|

      if @documento.update_attributes(params[:documento])
        
        if @descripcion != "" then
          Cambio.create(:user_id => current_user.id, :documento_id => @documento.id, :descripcion => @descripcion)
        end
        format.html { redirect_to documentos_url, notice: 'Documento actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos/1
  # DELETE /documentos/1.json
  def destroy
    @documento = Documento.find(params[:id])
    @documento.destroy

    respond_to do |format|
      format.html { redirect_to documentos_url }
      format.json { head :no_content }
    end
  end


  def dar_salida
    @documento = Documento.find(params[:idDocumento])
    @documento.fecha_salida = Time.now
    #obtengo el nro de salida mas grande entre todos los documentos
    @nro_salida_mayor = Documento.order("nro_salida desc").first.nro_salida
    @documento.nro_anio_salida = Time.now.year
    if @nro_salida_mayor then 
      @documento.nro_salida = @nro_salida_mayor + 1
    else
      @documento.nro_salida = 1
    end
    if @documento.save then
      #redirect_to @documento, notice: 'Se ha dado salida a la nota de manera correcta'
      redirect_to "/documentos/nota/"+@documento.id.to_s+".pdf"

    else

    end 
  end

  def duplicar_documento
    @documento = Documento.find(params[:idDocumento])
    @documento_nuevo = Documento.create(:fecha_recepcion => @documento.fecha_recepcion, :fecha_documento => @documento.fecha_documento, 
                                        :anio => @documento.anio, :asunto => @documento.asunto, :autorizado => @documento.autorizado,
                                        :destinatario => @documento.destinatario, :iniciado_por => @documento.iniciado_por, :localidad_id => @documento.localidad_id, 
                                        :motivo => @documento.motivo, :nombres_y_apellidos => @documento.nombres_y_apellidos, :nro_documento => @documento.nro_documento,
                                        :nro_salida => @documento.nro_salida, :observacion => @documento.observacion, :procedencia => @documento.procedencia, 
                                        :se_encuentra_en => @documento.se_encuentra_en, :sigla => @documento.sigla, :tipo_documento_id => @documento.tipo_documento_id)
    if @documento.documento_anexo.count > 0 then
      @documento.documento_anexo.each do |da|
        @documento_anexo_nuevo = DocumentoAnexo.create(:numero => da.numero, :anio => da.anio, :tipo_documento_id => da.tipo_documento_id, :documento_id => @documento_nuevo.id)        
      end
    end

    if @documento_nuevo.save then
      if @documento.documento_anexo.count > 0 then
        if @documento_anexo_nuevo.save then
          redirect_to "/documentos/"+@documento_nuevo.id.to_s+"/edit"
        end
      else
        redirect_to "/documentos/"+@documento_nuevo.id.to_s+"/edit"
      end
    end
  end

end
