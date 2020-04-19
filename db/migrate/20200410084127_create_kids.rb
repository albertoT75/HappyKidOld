class CreateKids < ActiveRecord::Migration[5.2]
  def change


    create_table :area do |t|
      t.string :sleeping
      t.string :potty
      t.string :eating
      t.string :dressing_up
      t.string :home_work

      t.timestamps
    end

    create_table :customize do |t|
      t.string :face
      t.string :hair
      t.string :clothes
      t.string :hats
      t.string :gadgets

      t.timestamps
    end


    create_table :reward do |t|
      t.timestamps
    end

    create_table :game do |t|
      t.string :kidname

      t.timestamps
    end
  end
end
