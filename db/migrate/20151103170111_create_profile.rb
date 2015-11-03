class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :profile_image_id
      t.text :about_me
      t.integer :age
    end
  end
end
