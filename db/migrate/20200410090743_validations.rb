class Validations < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_foreign_key :kids, :users
    add_foreign_key :games, :kids
  end
end
