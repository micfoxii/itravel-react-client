class CreateDestinationReviews < ActiveRecord::Migration
  def change
    create_table :destination_reviews do |t|
      t.string :slept_at
      t.text :slept_details
      t.string :restaurant_fav
      t.text :restaurant_details
      t.string :attraction_fav
      t.text :attraction_details
      t.text :recommendations
    end
  end
end
