class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :supervisor, :class_name => "User"
  has_many :employees, :class_name => "User", :foreign_key => "supervisor_id"
end