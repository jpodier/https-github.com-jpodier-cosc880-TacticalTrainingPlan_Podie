class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :supervisor, :class_name => "User", :foreign_key => "supervisorId"
  has_many :employees, :class_name => "User", :foreign_key => "supervisorId"
  has_many :course_requests, :foreign_key => "userId"

  validates :first_name, :last_name, :job_title, presence: true
  attr_accessor :supervisorEmail

 end
