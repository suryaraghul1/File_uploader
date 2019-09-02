class Resume < ApplicationRecord
     mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
    validates :name, presence: true 
     validates :position, presence: true
    validates :attachment, presence: true
    validates :emailId, format: { with: URI::MailTo::EMAIL_REGEXP } # Make sure the owner's name is present.
end
