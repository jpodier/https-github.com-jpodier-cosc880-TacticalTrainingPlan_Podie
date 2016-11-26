class AddIsSupervisorToUser < ActiveRecord::Migration
  def change
    add_column :users, :isSupervisor, :boolean
  end
end
