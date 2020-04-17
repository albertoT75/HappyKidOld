class ForeignKeysGame < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :area, foreign_key: true
    add_reference :games, :customize, foreign_key: true
    add_reference :games, :reward, foreign_key: true
  end
end
