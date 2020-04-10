class Validations < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_reference :kids, :user, foreign_key: true
    add_reference :games, :kid, foreign_key: true

  end
end
