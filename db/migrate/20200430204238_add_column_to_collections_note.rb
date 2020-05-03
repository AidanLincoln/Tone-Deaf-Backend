class AddColumnToCollectionsNote < ActiveRecord::Migration[6.0]
  def change
    add_column :collections_notes, :id, :primary_key
  end
end
