class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text, null: false
      t.string :image, null: true
      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.timestamps null: true
    end
  end
end
