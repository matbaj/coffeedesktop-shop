class CoffeecupsController < ApplicationController

  def index
    @coffeecups = current_user.coffeecups
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coffeecups }
    end
  end


  def show
    @coffeecup = Coffeecup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coffeecup }
    end
  end

  def new
    @coffeecup = Coffeecup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coffeecup }
    end
  end

  def edit
    @coffeecup = Coffeecup.find(params[:id])
  end


  def create
    @coffeecup = Coffeecup.new(params[:coffeecup])
    @coffeecup.user = current_user
    respond_to do |format|
      if @coffeecup.save
        format.html { redirect_to @coffeecup, notice: 'Coffeecup was successfully created.' }
        format.json { render json: @coffeecup, status: :created, location: @coffeecup }
      else
        format.html { render action: "new" }
        format.json { render json: @coffeecup.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @coffeecup = Coffeecup.find(params[:id])

    respond_to do |format|
      if @coffeecup.update_attributes(params[:coffeecup])
        format.html { redirect_to @coffeecup, notice: 'Coffeecup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coffeecup.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @coffeecup = Coffeecup.find(params[:id])
    @coffeecup.destroy

    respond_to do |format|
      format.html { redirect_to coffeecups_url }
      format.json { head :no_content }
    end
  end
end
