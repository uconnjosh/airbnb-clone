class AddAttachmentPicToPhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.attachment :pic
      t.string :caption
      t.belongs_to :property
    end
  end

  def self.down
    drop_attached_file :photos, :pic
  end
end
