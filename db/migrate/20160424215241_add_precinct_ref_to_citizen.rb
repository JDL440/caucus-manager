class AddPrecinctRefToCitizen < ActiveRecord::Migration[5.0]
  def change
    add_reference :citizens, :precinct, index: true, foreign_key: true
  end
end
