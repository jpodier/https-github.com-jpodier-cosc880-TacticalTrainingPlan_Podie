class CreateCourseRequests < ActiveRecord::Migration
  def change
    create_table :course_requests do |t|
      t.string :course_name
      t.text :description
      t.string :training_method
      t.string :training_category
      t.decimal :tuition_cost
      t.decimal :planned_travelcost
      t.decimal :actual_travelcost
      t.decimal :total_cost
      t.string :location
      t.date :training_date
      t.string :completion_status
      t.string :approval_status

      t.timestamps null: false
    end
  end
end
