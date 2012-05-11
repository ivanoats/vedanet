module Refinery
  module Courses
    class Course < Refinery::Core::BaseModel
      self.table_name = 'refinery_courses'      
    
      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true
              
    end
  end
end
