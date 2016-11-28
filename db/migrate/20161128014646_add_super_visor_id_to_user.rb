class AddSuperVisorIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :supervisorId, :integer
  end
end
