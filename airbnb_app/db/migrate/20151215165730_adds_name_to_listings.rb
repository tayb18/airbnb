class AddsNameToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :name, :string
  end
end
