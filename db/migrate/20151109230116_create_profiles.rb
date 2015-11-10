class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.text :about_me
      t.integer :profile_image_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
