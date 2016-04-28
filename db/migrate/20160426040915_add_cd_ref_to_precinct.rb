class AddCdRefToPrecinct < ActiveRecord::Migration
  def change
    add_reference :precincts, :congressional_district, index: true, foreign_key: true
  end
end
