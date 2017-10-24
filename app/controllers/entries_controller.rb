class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :destroy]

  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  # GET /entries/1/edit
  def edit
     @entry = Entry.find(params[:id])
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.js
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
      else
        format.html { render :new }
        format.js
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
     @entry = Entry.find(params[:id])

    respond_to do |format|
      if @entry.update(entry_params)
        format.js
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
      else
        format.html { render :edit }
        format.js
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:name, :address, :phone, :email)
    end
end
