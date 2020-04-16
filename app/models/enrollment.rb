# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    belongs_to :user,
    class_name: 'User',
    foreign_key: :student_id,
    primary_key: :id
    
    belongs_to :course,
    class_name: 'Course',
    foreign_key: :course_id ,
    primary_key: :id
end


#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# class Location < ApplicationRecord
#     # all models inherit form ApplicationRecord which also inherits from ActiveRecord
#     # you will get schema information from bundle exec annotate --models
#      validates :name, presence: true #tell this column is required
  
  
#     has_many :users,
#     foreign_key: :location_id,
#     primary_key: :id,
#     class_name: :User
  
#     has_many :squeaks,
#     through: :users, #should be the name of association
#     source: :squeaks #should be the name of association
#     #colons are important!
#   end

# Table name: squeaks
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# class Squeak < ApplicationRecord
#     validates :body, presence: true
  
#     belongs_to :author, #you can write user but this is semantic choice
#     foreign_key: :author_id, #same as the foreign key on schema 
#     primary_key: :id,
#     class_name: :User
#   end
