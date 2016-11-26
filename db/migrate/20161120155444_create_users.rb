class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :job_assignment

      t.timestamps null: false
    end
  end
end
