class AddLdRefToPrecinct < ActiveRecord::Migration[5.0]
  def change
    add_reference :precincts, :legislative_district, index: true, foreign_key: true
  end
end
