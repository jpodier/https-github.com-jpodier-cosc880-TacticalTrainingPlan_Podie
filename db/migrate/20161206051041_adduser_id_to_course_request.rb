class AdduserIdToCourseRequest < ActiveRecord::Migration
  def change
    add_column :course_requests, :userId, :integer
  end
end
