class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :sleeping
      t.string :potty
      t.string :eating
      t.string :dressing_up
      t.string :home_work

      t.timestamps
    end
  end
end
