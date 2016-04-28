class AddPrecinctRefToCitizen < ActiveRecord::Migration
  def change
    add_reference :citizens, :precinct, index: true, foreign_key: true
  end
end
