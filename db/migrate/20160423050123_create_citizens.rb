class CreateCitizens < ActiveRecord::Migration[5.0]
  def change
    create_table :citizens do |t|
      t.string :firstname
      t.string :lastname
      t.string :candidate

      t.timestamps null: false
    end
  end
end
