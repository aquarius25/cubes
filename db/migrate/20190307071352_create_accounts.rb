class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :image, null: true
      t.string :f_name, null: true
      t.string :t_name, null: true
      t.text :profile, null: true
      t.text :link, null: true
      t.integer :user_id, foreign_key: true
      t.timestamps null: true
    end
  end
end
