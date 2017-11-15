class AddGenderToCitizens < ActiveRecord::Migration[5.0]
  def change
    add_column :citizens, :gender, :string
    add_index :citizens, :gender
  end
end
