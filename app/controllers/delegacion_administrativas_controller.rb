class DelegacionAdministrativasController < ApplicationController
  # GET /delegacion_administrativas
  # GET /delegacion_administrativas.json
  def index
    @delegacion_administrativas = DelegacionAdministrativa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delegacion_administrativas }
    end
  end

  # GET /delegacion_administrativas/1
  # GET /delegacion_administrativas/1.json
  def show
    @delegacion_administrativa = DelegacionAdministrativa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delegacion_administrativa }
    end
  end

  # GET /delegacion_administrativas/new
  # GET /delegacion_administrativas/new.json
  def new
    @delegacion_administrativa = DelegacionAdministrativa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delegacion_administrativa }
    end
  end

  # GET /delegacion_administrativas/1/edit
  def edit
    @delegacion_administrativa = DelegacionAdministrativa.find(params[:id])
  end

  # POST /delegacion_administrativas
  # POST /delegacion_administrativas.json
  def create
    @delegacion_administrativa = DelegacionAdministrativa.new(params[:delegacion_administrativa])

    respond_to do |format|
      if @delegacion_administrativa.save
        format.html { redirect_to @delegacion_administrativa, notice: 'Delegacion administrativa was successfully created.' }
        format.json { render json: @delegacion_administrativa, status: :created, location: @delegacion_administrativa }
      else
        format.html { render action: "new" }
        format.json { render json: @delegacion_administrativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /delegacion_administrativas/1
  # PUT /delegacion_administrativas/1.json
  def update
    @delegacion_administrativa = DelegacionAdministrativa.find(params[:id])

    respond_to do |format|
      if @delegacion_administrativa.update_attributes(params[:delegacion_administrativa])
        format.html { redirect_to @delegacion_administrativa, notice: 'Delegacion administrativa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delegacion_administrativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delegacion_administrativas/1
  # DELETE /delegacion_administrativas/1.json
  def destroy
    @delegacion_administrativa = DelegacionAdministrativa.find(params[:id])
    @delegacion_administrativa.destroy

    respond_to do |format|
      format.html { redirect_to delegacion_administrativas_url }
      format.json { head :no_content }
    end
  end
end
