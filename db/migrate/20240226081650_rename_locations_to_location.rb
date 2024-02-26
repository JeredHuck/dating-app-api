class RenameLocationsToLocation < ActiveRecord::Migration[7.1]
  def change
    rename_table :locations, :location
  end
end
