class AddProfileImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_image, :text, null: true
  end
end
