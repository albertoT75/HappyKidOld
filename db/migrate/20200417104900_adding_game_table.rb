class AddingGameTable < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :kid, foreign_key: true
      t.references :area, foreign_key: true
      t.references :customize, foreign_key: true
      t.references :reward, foreign_key: true

      t.timestamps
    end
  end
end
