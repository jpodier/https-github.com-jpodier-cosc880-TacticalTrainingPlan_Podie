class CourseRequest < ActiveRecord::Base
  #belongs_to :users, :class_name => "CourseRequest", :foreign_key => "userId"
  #has_many :users, :class_name => "CourseRequest", :foreign_key => "userId"
  belongs_to :user, :foreign_key => "userId"

  validates :course_name, :description, :training_method, :tuition_cost, :planned_travelcost, :total_cost, presence: true
  validates :tuition_cost, :planned_travelcost, :total_cost, numericality: true
  validates :tuition_cost, :planned_travelcost, :total_cost,  :format => {:with => /\A\d+(?:\.\d{0,2})?\z/},:numericality => {:greater_than_or_equal_to => 0.00}
end
