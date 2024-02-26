class CreateProfile < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.text :bio
      t.string :profile_picture_url

      t.timestamps
    end
  end
end
