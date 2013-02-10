class CoffeeCell < Cell::Rails


  def last
  	@coffeecups = Coffeecup.find(:all, :order => "id desc", :limit => 3)
    render
  end

  def top_rated
  	#TODO add stars
  	@coffeecups = Coffeecup.find(:all, :order => "id desc", :limit => 3)
    render
  end
  def recommended
  	#TODO add stars and awesome algorithm to recomend apps
  	@coffeecups = Coffeecup.find(:all, :order => "id desc", :limit => 3)
    render
  end


end
