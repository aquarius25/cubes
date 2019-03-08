class AddLink2ToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :link2, :text
  end
end
