module Refinery
  module Courses
    class Course < Refinery::Core::BaseModel
      self.table_name = 'refinery_courses'

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      attr_accessible :name,
                      :description,
                      :start_date,
                      :end_date,
                      :position

    end
  end
end
