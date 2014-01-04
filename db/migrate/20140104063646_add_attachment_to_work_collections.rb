class AddAttachmentToWorkCollections < ActiveRecord::Migration
  def change
    add_column :work_collections, :attachment, :string
  end
end
