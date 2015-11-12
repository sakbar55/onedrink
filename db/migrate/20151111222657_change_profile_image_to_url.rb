class ChangeProfileImageToUrl < ActiveRecord::Migration
  def self.up
    remove_column :profiles, :profile_image_id
    add_column    :profiles, :profile_image_url, :string
  end

  def self.down
    add_column     :profiles, :profile_image_id, :integer
    remove_column  :profiles, :profile_image_url
  end
end
