class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :name,	null: false
      t.text	:text, null: false
      t.string	:image, null: true
      t.integer :user_id,	null: false
      t.timestamps null: true
    end
  end
end
