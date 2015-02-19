class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :location
      t.integer :bedrooms
      t.integer :baths
      t.integer :sleeps
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :user_id
    end
  end
end
