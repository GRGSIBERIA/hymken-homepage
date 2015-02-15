class Student < ActiveRecord::Base
  belongs_to :grade
  belongs_to :course
end
