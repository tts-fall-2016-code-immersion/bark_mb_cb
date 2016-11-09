class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.string :user_id
      t.string :friend_id

      t.timestamps
    end
  end
end
