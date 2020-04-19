class AddUserGameDependency < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :games, :user
  end
end
