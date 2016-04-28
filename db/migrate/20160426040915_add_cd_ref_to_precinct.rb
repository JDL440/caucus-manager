class AddCdRefToPrecinct < ActiveRecord::Migration
  def change
    add_reference :precincts, :congressionaldistrict, index: true, foreign_key: true
  end
end
