class AddCheckedOutToCheckIns < ActiveRecord::Migration[7.2]
  def change
    add_column :check_ins, :checked_out, :boolean
  end
end
