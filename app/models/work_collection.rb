class WorkCollection < ActiveRecord::Base
  attr_accessible :attachment
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader
end
