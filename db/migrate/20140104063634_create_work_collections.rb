class CreateWorkCollections < ActiveRecord::Migration
  def change
    create_table :work_collections do |t|
      t.references :user

      t.timestamps
    end
    add_index :work_collections, :user_id
  end
end
