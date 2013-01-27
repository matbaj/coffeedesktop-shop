class CreateCoffeecups < ActiveRecord::Migration
  def change
    create_table :coffeecups do |t|
      t.string :title
      t.string :short
      t.string :img
      t.integer :user_id
      t.text :about
      t.string :url

      t.timestamps
    end
  end
end
