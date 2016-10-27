class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :user, :name, :string
    add_column :user, :username, :string
    add_column :user, :bio, :text
    add_column :user, :location, :string
  end
end
