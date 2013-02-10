class ShopController < ApplicationController

	def index
	end
	def browse
		@q = Coffeecup.order("title").search(params[:q])
		@coffeecups = @q.result(:distinct => true).page(params[:page]).per(6)
	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @coffeecups }
	    end
	end
end
