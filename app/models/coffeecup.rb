class Coffeecup < ActiveRecord::Base
  attr_accessible :about, :img, :short, :title, :url, :user_id
  belongs_to :user
end
