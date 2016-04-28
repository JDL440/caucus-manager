class AddFieldsToCitizen < ActiveRecord::Migration
  def change
    add_column :citizens, :ld_delegate, :boolean
    add_column :citizens, :ld_alternate_number, :integer
    add_column :citizens, :ld_checked_in, :boolean
    add_column :citizens, :ld_seated_alternate, :boolean
    add_column :citizens, :email, :string
    add_column :citizens, :phone, :string
    add_column :citizens, :address, :string
    add_column :citizens, :city, :string
    add_column :citizens, :zip, :string
  end
end
