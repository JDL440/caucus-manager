class AddLdRefToPrecinct < ActiveRecord::Migration
  def change
    add_reference :precincts, :legislative_district, index: true, foreign_key: true
  end
end
