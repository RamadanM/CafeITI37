class AddUserIdToPros < ActiveRecord::Migration[5.0]
  def change
    add_column :pros, :user_id, :integer
  end
end
