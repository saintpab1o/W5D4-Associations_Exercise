# == Schema Information
# Table name: courses', 
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord

    has_many :enrollments,
    class_name: 'Enrollment',
    foreign_key: :course_id,
    primary_key: :id

    has_many :enrolled_students,
    through: :enrollments,
    source: :course

    belongs_to :prerequisite,
    foreign_key: :course_id,
    primary_key: :id,
    optional: true

    belongs_to :instructor,
    foreign_key: :course_id,
    primary_key: :id

    
end
