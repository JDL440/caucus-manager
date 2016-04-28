class CreatePrecincts < ActiveRecord::Migration
  def change
    create_table :precincts do |t|
      t.string :name
      t.integer :numberOfDelegates
      t.integer :numberOfAlternates
      t.references :legislativedistrict, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
