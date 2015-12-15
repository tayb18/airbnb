class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	t.text :photo_url
    	t.string :address
    	t.string :neighborhood
    	t.integer :price_per_night
    	t.text :description
    	t.references :user
    	t.boolean :is_available
    	t.timestamps null: false
    end
  end
end
