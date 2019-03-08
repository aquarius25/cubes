class AddLink1ToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :link1, :text
  end
end
