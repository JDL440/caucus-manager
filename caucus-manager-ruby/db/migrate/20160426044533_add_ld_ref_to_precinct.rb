class AddLdRefToPrecinct < ActiveRecord::Migration
  def change
    add_reference :precincts, :legislativedistrict, index: true, foreign_key: true
  end
end
