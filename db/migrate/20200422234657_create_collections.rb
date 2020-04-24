class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :scale_name
      t.boolean :is_scale
      t.integer :user_id

      t.timestamps
    end
  end
end
