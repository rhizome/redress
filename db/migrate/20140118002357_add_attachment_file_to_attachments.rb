class AddAttachmentFileToAttachments < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :attachments, :file
  end
end
