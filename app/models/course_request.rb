class CourseRequest < ActiveRecord::Base
  #belongs_to :users, :class_name => "CourseRequest", :foreign_key => "userId"
  #has_many :users, :class_name => "CourseRequest", :foreign_key => "userId"
  belongs_to :user, :foreign_key => "userId"

  validates :course_name, :description, :training_method, presence: true
end
