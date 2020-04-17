class GameForeignKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :customizes do |t|
      t.string :face
      t.string :hair
      t.string :clothes
      t.string :hats
      t.string :gadgets

      t.timestamps
    end

    create_table :areas do |t|
      t.string :sleeping
      t.string :potty
      t.string :eating
      t.string :dressing_up
      t.string :home_work

      t.timestamps
    end

    create_table :rewards do |t|

      t.timestamps

    end


  end
end
