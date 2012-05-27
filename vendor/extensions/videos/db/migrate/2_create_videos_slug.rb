class CreateVideosSlug < ActiveRecord::Migration

  def change
    add_column :refinery_videos, :slug, :string
    add_index :refinery_videos, :slug
  end

end
