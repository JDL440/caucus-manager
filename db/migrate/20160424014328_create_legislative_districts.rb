class CreateLegislativeDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :legislative_districts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
