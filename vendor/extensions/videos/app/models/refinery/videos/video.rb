module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      attr_accessible :title, :position, :embed_code, :youtube_id

      acts_as_indexed :fields => [:title, :embed_code]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
