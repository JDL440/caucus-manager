class AddCdRefToPrecinct < ActiveRecord::Migration[5.0]
  def change
    add_reference :precincts, :congressional_district, index: true, foreign_key: true
  end
end
