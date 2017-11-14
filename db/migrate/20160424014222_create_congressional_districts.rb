class CreateCongressionalDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :congressional_districts do |t|
      t.string :name
      t.integer :numberOfDelegates
      t.integer :numberOfAlternates

      t.timestamps null: false
    end
  end
end
