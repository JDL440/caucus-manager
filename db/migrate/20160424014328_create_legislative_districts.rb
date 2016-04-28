class CreateLegislativeDistricts < ActiveRecord::Migration
  def change
    create_table :legislative_districts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
