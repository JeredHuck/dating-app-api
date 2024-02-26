class AddColumnsToLocations < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :zip_code, :string
    add_column :locations, :city, :string
    add_column :locations, :state, :string
    add_column :locations, :country, :string
    add_column :locations, :address, :string
  end
end
