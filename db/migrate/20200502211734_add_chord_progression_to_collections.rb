class AddChordProgressionToCollections < ActiveRecord::Migration[6.0]
  def change
    add_column :collections, :chord_progression, :integer
  end
end
