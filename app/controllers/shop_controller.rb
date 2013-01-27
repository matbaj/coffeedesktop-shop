class ShopController < ApplicationController

	def index
	    @coffeecups = Coffeecup.all

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @coffeecups }
	    end
	end
end
