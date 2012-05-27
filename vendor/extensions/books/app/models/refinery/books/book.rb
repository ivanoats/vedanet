module Refinery
  module Books
    class Book < Refinery::Core::BaseModel

      extend FriendlyId
        friendly_id :title, use: :slugged

      self.table_name = 'refinery_books'

      attr_accessible :title, :position, :description, :cover_id

      acts_as_indexed :fields => [:title, :description]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :cover, :class_name => '::Refinery::Image'
    end
  end
end
