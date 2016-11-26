class CreateSupervisor < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.references :supervisor, index:true
    end
  end
end
