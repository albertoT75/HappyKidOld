class CreateCustomizes < ActiveRecord::Migration[5.2]
  def change
    create_table :customizes do |t|
      t.string :face
      t.string :hair
      t.string :clothes
      t.string :hats
      t.string :gadgets

      t.timestamps
    end
  end
end
