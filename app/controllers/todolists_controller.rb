class TodolistsController < ApplicationController
  before_action :set_todolist, only: %i[ show edit update destroy ]

  # GET /todolists or /todolists.json
  def index
    @todolists = Todolist.all
  end

  # GET /todolists/1 or /todolists/1.json
  def show
  end

  # GET /todolists/new
  def new
    @todolist = Todolist.new
  end

  # GET /todolists/1/edit
  def edit
  end

  # POST /todolists or /todolists.json
  def create
    @todolist = Todolist.new(todolist_params)

    respond_to do |format|
      if @todolist.save
        format.html { redirect_to todolist_url(@todolist), notice: "Todolist was successfully created." }
        format.json { render :show, status: :created, location: @todolist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todolists/1 or /todolists/1.json
  def update
    respond_to do |format|
      if @todolist.update(todolist_params)
        format.html { redirect_to todolist_url(@todolist), notice: "Todolist was successfully updated." }
        format.json { render :show, status: :ok, location: @todolist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todolists/1 or /todolists/1.json
  def destroy
    @todolist.destroy

    respond_to do |format|
      format.html { redirect_to todolists_url, notice: "Todolist was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todolist
      @todolist = Todolist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todolist_params
      params.require(:todolist).permit(:Tasks, :Priority, :Urgency, :Active, :Category)
    end
end
