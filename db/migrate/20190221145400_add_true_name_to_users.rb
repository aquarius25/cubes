class AddTrueNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :true_name, :string
  end
end
