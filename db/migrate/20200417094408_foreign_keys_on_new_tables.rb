class ForeignKeysOnNewTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :customizes, foreign_key: true
    add_reference :games, :rewards, foreign_key: true
    add_reference :games, :areas, foreign_key: true
  end
end
