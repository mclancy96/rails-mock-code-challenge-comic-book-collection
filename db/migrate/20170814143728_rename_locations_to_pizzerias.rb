class RenameLocationsToCollections < ActiveRecord::Migration[7.1]
  def change
    rename_table :locations, :collections
  end
end
