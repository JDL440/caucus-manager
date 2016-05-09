class AddGenderToCitizens < ActiveRecord::Migration
  def change
    add_column :citizens, :gender, :string
    add_index :citizens, :gender
  end
end
